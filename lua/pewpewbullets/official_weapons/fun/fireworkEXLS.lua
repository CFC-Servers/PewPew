-- Basic Missile

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "Firework Extended (Light Spread)"
BULLET.Author = "Hexwolf (Base by Kouta)"
BULLET.Description = "Launch a single firework roughly where your cannon is pointed, greater life span."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false
BULLET.UseOldSystem = true

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
BULLET.Spread = 1

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
BULLET.Lifetime = {5,8}
BULLET.ExplodeAfterDeath = true
BULLET.EnergyPerShot = 650

-- Custom Functions 
-- (If you set the override var to true, the cannon/bullet will run these instead. Use these functions to do stuff which is not possible with the above variables)

pewpew:AddWeapon( BULLET )