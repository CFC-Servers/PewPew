-- Basic Cannon

if SERVER then util.AddNetworkString("PewPew-FlakLifetime") end

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "[Modifiable] Firework"
BULLET.Author = "Hexwolf (Base by Divran)"
BULLET.Description = "Launches a firework which has a player set fuse time."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/combatmodels/tankshell.mdl"
BULLET.Material = "phoenix_storms/gear"
BULLET.Color = Color(math.random(50,255),math.random(50,255),math.random(50,255))
BULLET.Trail = {StartSize=30, EndSize=0, Length=0.75, Texture="trails/smoke.vmt", Color=Color(255,255,255)}

-- Effects / Sounds
BULLET.FireSound = {"weapons/flaregun_shoot.wav"}
BULLET.ExplosionSound = {"ambient/explosions/explode_8.wav","ambient/explosions/explode_9.wav"}
BULLET.FireEffect = nil
BULLET.ExplosionEffect = "confetti"

-- Movement
BULLET.Speed = 30
BULLET.Gravity = 0
BULLET.RecoilForce = 0
BULLET.Spread = 0

-- Damage
BULLET.DamageType = "BlastDamage"
BULLET.Damage = 10
BULLET.Radius = 150
BULLET.RangeDamageMul = 2
BULLET.NumberOfSlices = nil
BULLET.SliceDistance = nil
BULLET.PlayerDamage = 20
BULLET.PlayerDamageRadius = 150

-- Reloading/Ammo
BULLET.Reloadtime = 0.3
BULLET.Ammo = 0
BULLET.AmmoReloadtime = 0

-- Other
BULLET.Lifetime = nil
BULLET.ExplodeAfterDeath = true
BULLET.EnergyPerShot = 650

BULLET.CustomInputs = { "Fire", "Lifetime" }

if CLIENT then
	net.Receive("PewPew-FlakLifetime", function() local n=net.ReadFloat() BULLET.Lifetime={n,n} end)
end

-- Wire Input (This is called whenever a wire input is changed)
BULLET.WireInputOverride = true
function BULLET:WireInput( inputname, value )
	if (inputname == "Lifetime") then
		self.Lifetime = value
		net.Start("PewPew-FlakLifetime")
			net.WriteFloat(value)
		net.Broadcast()
	else
		self:InputChange( inputname, value )
	end
end

-- Initialize (Is called when the bullet initializes)
function BULLET:Initialize()
	pewpew:DefaultBulletInitialize( self )
	-- Lifetime
	if (self.Cannon.Lifetime) then
		self.Lifetime = CurTime() + self.Cannon.Lifetime
	end
end

pewpew:AddWeapon( BULLET )
