-- Basic Missile

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "Rocket Launcher (EMP)"
BULLET.Author = "Hexwolf (Base by Divran)"
BULLET.Description = "Rocket launcher with 6 rockets. Equipped with an EMP warhead."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/aamissile.mdl"
BULLET.Material = "phoenix_storms/gear"
BULLET.Color = nil
BULLET.Trail = { StartSize = 30,
				 EndSize = 5,
				 Length = 0.5,
				 Texture = "trails/smoke.vmt",
				 Color = Color( 200, 200, 200, 255 ) }

-- Effects / Sounds
BULLET.FireSound = {"arty/rocket.wav"}
BULLET.ExplosionSound = {"weapons/explode3.wav","weapons/explode4.wav","weapons/explode5.wav"}
BULLET.FireEffect = nil
BULLET.ExplosionEffect = "v2splode"

-- Movement
BULLET.Speed = 45
BULLET.Gravity = 0
BULLET.RecoilForce = 20
BULLET.Spread = 1.5

-- Damage
BULLET.DamageType = "EMPDamage"
BULLET.Damage = nil
BULLET.Radius = 300
BULLET.RangeDamageMul = nil
BULLET.NumberOfSlices = nil
BULLET.SliceDistance = nil
BULLET.Duration = 3
BULLET.PlayerDamage = nil
BULLET.PlayerDamageRadius = nil

-- Reloading/Ammo
BULLET.Reloadtime = 0.5
BULLET.Ammo = 6
BULLET.AmmoReloadtime = 6

BULLET.EnergyPerShot = 600

pewpew:AddWeapon( BULLET )
