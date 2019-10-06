-- Grenade Launcher

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "500lb bombs [3s]( HE )"
BULLET.Author = "Hexwolf ( Base by Divran )"
BULLET.Description = "Drops 2 500lb bombs with a 3 second fuse."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/props_phx/ww2bomb.mdl"
BULLET.Material = nil
BULLET.Color = nil
BULLET.Trail = { StartSize = 10,
				 EndSize = 0,
				 Length = 0.6,
				 Texture = "trails/smoke.vmt",
				 Color = Color( 200, 200, 200, 255 ) }

-- Effects / Sounds
BULLET.FireSound = {"npc/attack_helicopter/aheli_mine_drop1.wav"}
BULLET.ExplosionSound = {"weapons/explode3.wav", "weapons/explode4.wav", "weapons/explode5.wav"}
BULLET.FireEffect = nil
BULLET.ExplosionEffect = "gcombat_explosion"

-- Movement
BULLET.Speed = 0
BULLET.RecoilForce = 100
BULLET.Spread = 0

-- Damage
BULLET.DamageType = "BlastDamage"
BULLET.Damage = 1000
BULLET.Radius = 625
BULLET.RangeDamageMul = 2.2
BULLET.NumberOfSlices = nil
BULLET.SliceDistance = nil
BULLET.PlayerDamage = 150
BULLET.PlayerDamageRadius = 425

-- Reloading/Ammo
BULLET.Reloadtime = 0.01
BULLET.Ammo = 2
BULLET.AmmoReloadtime = 20

-- Other
BULLET.Lifetime = {3, 3}
BULLET.ExplodeAfterDeath = true
BULLET.EnergyPerShot = 4000

BULLET.UseOldSystem = true

-- Overrides

function BULLET:Initialize()
	self:DefaultInitialize()
	self.Entity:PhysicsInit( SOLID_VPHYSICS )
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
	self.Entity:SetSolid( SOLID_VPHYSICS )

	constraint.NoCollide( self.Entity, self.Cannon.Entity, 0, 0 )
		
	self.Entity:SetAngles( self.Entity:GetUp():Angle() )
	local phys = self.Entity:GetPhysicsObject()
	phys:SetMass( 5000 )
end

function BULLET:Think()
	-- Lifetime
	if ( self.Lifetime ) then
		if ( CurTime() > self.Lifetime ) then
			if ( self.Bullet.ExplodeAfterDeath ) then
				local tr = {}
				tr.start = self.Entity:GetPos()
				tr.endpos = self.Entity:GetPos()-Vector( 0, 0, 10 )
				tr.filter = self.Entity
				local trace = util.TraceLine( tr )
				self:Explode( trace )
			else
				self.Entity:Remove()
			end
		end
	end
	
	self.Entity:NextThink( CurTime() + 1 )
	return true
end

pewpew:AddWeapon( BULLET )
