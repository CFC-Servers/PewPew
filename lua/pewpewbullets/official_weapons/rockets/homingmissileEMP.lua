-- Homing Missile

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "Homing Missile (EMP)"
BULLET.Author = "Divran"
BULLET.Description = "Fires a very slow, long lasting homing missile. Equipped with an EMP warhead."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/aamissile.mdl"
BULLET.Material = "phoenix_storms/gear"
BULLET.Color = nil
BULLET.Trail = nil

-- Effects / Sounds
BULLET.FireSound = {"arty/rocket.wav"}
BULLET.ExplosionSound = {"weapons/explode3.wav","weapons/explode4.wav","weapons/explode5.wav"}
BULLET.FireEffect = nil
BULLET.ExplosionEffect = "v2splode"

-- Movement
BULLET.Speed = 45
BULLET.Gravity = 0
BULLET.RecoilForce = 60
BULLET.Spread = 0

-- Damage
BULLET.DamageType = "EMPDamage"
BULLET.Damage = nil
BULLET.Radius = 300
BULLET.RangeDamageMul = nil
BULLET.NumberOfSlices = nil
BULLET.SliceDistance = nil
BULLET.Duration = 10
BULLET.PlayerDamage = nil
BULLET.PlayerDamageRadius = nil

-- Reloading/Ammo
BULLET.Reloadtime = 4
BULLET.Ammo = 0
BULLET.AmmoReloadtime = 0

BULLET.Lifetime = {15,15}
BULLET.ExplodeAfterDeath = true
BULLET.EnergyPerShot = 4800

BULLET.UseOldSystem = true

BULLET.CustomInputs = { "Fire", "X", "Y", "Z", "XYZ [VECTOR]" }


-- Custom Functions 
-- (If you set the override var to true, the cannon/bullet will run these instead. Use these functions to do stuff which is not possible with the above variables)

-- Wire Input (This is called whenever a wire input is changed)
function BULLET:WireInput( inputname, value )
	if (inputname == "Fire") then
		if (value != 0) then
			self.Firing = true
		else
			self.Firing = false
		end
		if (value != 0 and self.CanFire == true) then
			self.LastFired = CurTime()
			self.CanFire = false
			if WireLib then WireLib.TriggerOutput(self.Entity, "Can Fire", 0) end
			self:FireBullet()
		end
	elseif (inputname == "X") then
		if (!self.TargetPos) then self.TargetPos = Vector(0,0,0) end
		self.TargetPos.x = value
	elseif (inputname == "Y") then
		if (!self.TargetPos) then self.TargetPos = Vector(0,0,0) end
		self.TargetPos.y = value
	elseif (inputname == "Z") then
		if (!self.TargetPos) then self.TargetPos = Vector(0,0,0) end
		self.TargetPos.z = value
	elseif (inputname == "XYZ") then
		self.TargetPos = value
	end		
end

-- Initialize (Is called when the bullet initializes)
function BULLET:Initialize()   
	self:DefaultInitialize()
	
	self.TargetDir = self.Entity:GetUp()
	if (self.Cannon:IsValid()) then
		if (self.Cannon.TargetPos and self.Cannon.TargetPos != Vector(0,0,0)) then
			self.TargetDir = (self.Cannon.TargetPos-self:GetPos()):GetNormalized()
		end
	end
	
	-- Lifetime
	self.Lifetime = false
	if (self.Bullet.Lifetime) then
		if (self.Bullet.Lifetime[1] > 0 and self.Bullet.Lifetime[2] > 0) then
			if (self.Bullet.Lifetime[1] == self.Bullet.Lifetime[2]) then
				self.Lifetime = CurTime() + self.Bullet.Lifetime[1]
			else
				self.Lifetime = CurTime() + math.Rand(self.Bullet.Lifetime[1],self.Bullet.Lifetime[2])
			end
		end
	end

	local trail = ents.Create("env_fire_trail")
	trail:SetPos( self.Entity:GetPos() - self.Entity:GetUp() * 20 )
	trail:Spawn()
	trail:SetParent( self.Entity )
end

-- Think
function BULLET:Think()
	-- Make it fly
	self.Entity:SetPos( self.Entity:GetPos() + self.FlightDirection * self.Bullet.Speed )
	if (self.Cannon and self.Cannon:IsValid() and self.Cannon.TargetPos) then
		self.FlightDirection = self.FlightDirection + (self.TargetDir-self.FlightDirection) / 20
		self.FlightDirection = self.FlightDirection:GetNormalized()

		self.TargetDir = (self.Cannon.TargetPos-self:GetPos()):GetNormalized()
	end
	self.Entity:SetAngles( self.FlightDirection:Angle() + Angle(90,0,0) )
	
	-- Lifetime
	if (self.Lifetime) then
		if (CurTime() > self.Lifetime) then
			if (self.Bullet.ExplodeAfterDeath) then
				local trace = pewpew:Trace( self:GetPos() - self.FlightDirection * self.Bullet.Speed, self.FlightDirection * self.Bullet.Speed, self)
				self:Explode( trace )
			else
				self.Entity:Remove()
			end
		end
	end
	
	if (CurTime() > self.TraceDelay) then
		-- Check if it hit something
		local trace = pewpew:Trace( self:GetPos() - self.FlightDirection * self.Bullet.Speed, self.FlightDirection * self.Bullet.Speed, self )
		
		if (trace.Hit and !self.Exploded) then	
			self.Exploded = true
			self:Explode( trace )
		else			
			-- Run more often!
			self.Entity:NextThink( CurTime() )
			return true
		end
	else			
		-- Run more often!
		self.Entity:NextThink( CurTime() )
		return true
	end
end

pewpew:AddWeapon( BULLET )
