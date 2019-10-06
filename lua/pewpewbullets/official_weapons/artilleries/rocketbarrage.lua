-- Basic Missile

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "Rocket Barrage ( HE )"
BULLET.Author = "Divran"
BULLET.Description = "Fires a dozen rockets in an arc which cover a large area."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/aamissile.mdl"
BULLET.Material = "phoenix_storms/gear"
BULLET.Color = nil
BULLET.Trail = nil

-- Effects / Sounds
BULLET.FireSound = {"arty/rocket.wav"}
BULLET.ExplosionSound = {"weapons/explode3.wav", "weapons/explode4.wav", "weapons/explode5.wav"}
BULLET.FireEffect = nil
BULLET.ExplosionEffect = "v2splode"

-- Movement
BULLET.Speed = 40
BULLET.RecoilForce = 0
BULLET.Spread = 2
BULLET.AffectedBySBGravity = true

-- Damage
BULLET.DamageType = "BlastDamage"
BULLET.Damage = 250
BULLET.Radius = 300
BULLET.RangeDamageMul = 2
BULLET.PlayerDamage = 75
BULLET.PlayerDamageRadius = 300

-- Reloading/Ammo
BULLET.Reloadtime = 0.2
BULLET.Ammo = 12
BULLET.AmmoReloadtime = 10

BULLET.EnergyPerShot = 220

pewpew:AddWeapon( BULLET )
