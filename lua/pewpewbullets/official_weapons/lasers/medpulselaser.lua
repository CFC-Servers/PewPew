-- Basic Laser

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "Medium Pulse Laser"
BULLET.Author = "Hexwolf (Base by Divran)"
BULLET.Description = "Fires a laser up to 3 times rapidly, dealing moderate damage."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Effects / Sounds
BULLET.FireSound = {"Lasers/Small/Laser.wav"}
BULLET.ExplosionEffect = "ISSmallPulseBeam"

-- Movement
BULLET.Spread = 0

-- Damage
BULLET.DamageType = "PointDamage"
BULLET.Damage = 40

-- Reloading/Ammo
BULLET.Reloadtime = 0.15
BULLET.Ammo = 3
BULLET.AmmoReloadtime = 2

BULLET.ExplodeAfterDeath = false
BULLET.EnergyPerShot = 200

BULLET.Gravity = 0

-- Fire (Is called before the cannon is about to fire)
function BULLET:Fire()
	-- Calculate initial position of bullet
	local direction, startpos = pewpew:GetFireDirection( self.Direction, self )
	
	local num = self.Bullet.Spread
	if (num) then
		local spread = Angle(math.Rand(-num,num),math.Rand(-num,num),0)
		direction:Rotate(spread)
	end
	
	-- Deal damage
	local trace = pewpew:Trace( startpos, direction * 100000 )
	local HitPos = trace.HitPos or StartPos + direction * 100000
	if (trace.Entity and trace.Entity:IsValid()) then
		-- Stargate shield damage
		if (trace.Entity:GetClass() == "shield") then
			trace.Entity:Hit(nil,trace.HitPos,self.Bullet.Damage*pewpew:GetConVar("StargateShield_DamageMul"),trace.HitNormal)
		else
			pewpew:PointDamage( trace.Entity, self.Bullet.Damage, self )
		end
	end
	
	-- Effects
	self:EmitSound( self.Bullet.FireSound[1] )
	
	local effectdata = EffectData()
	effectdata:SetOrigin( HitPos  )
	effectdata:SetStart( startpos )
	util.Effect( self.Bullet.ExplosionEffect, effectdata )
end

pewpew:AddWeapon( BULLET )
