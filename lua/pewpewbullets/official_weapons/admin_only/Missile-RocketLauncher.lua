-- Rocket Battery

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "Missile-Rocket Launcher [Debug]"
BULLET.Author = "Hexwolf ( Base by Divran )"
BULLET.Description = "Rapid fire rocket battery with 6 dumb rockets."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/weapons/W_missile_launch.mdl"
BULLET.Material = nil
BULLET.Color = nil
BULLET.Trail = { StartSize = 15,
				 EndSize = 0,
				 Length = 1,
				 Texture = "trails/smoke.vmt",
				 Color = Color( 255, 255, 255, 255 ) }

-- Effects / Sounds
BULLET.FireSound = {"weapons/stinger_fire1.wav" }
BULLET.ExplosionSound = nil
BULLET.FireEffect = nil
BULLET.ExplosionEffect = "explosion"
BULLET.EmptyMagSound = nil

-- Movement
BULLET.Speed = 100
BULLET.Gravity = 0
BULLET.RecoilForce = 200
BULLET.Spread = 0
BULLET.AngleOffset = Angle( -90,0,0 )

-- Damage
BULLET.DamageType = "BlastDamage"
BULLET.Damage = 150
BULLET.Radius = 150
BULLET.RangeDamageMul = 2.8
BULLET.PlayerDamage = 110
BULLET.PlayerDamageRadius = 150

-- Reloading/Ammo
BULLET.Reloadtime = 4.5
BULLET.Ammo = 0
BULLET.AmmoReloadtime = 0

-- Other
BULLET.Lifetime = {3,4}
BULLET.ExplodeAfterDeath = true
BULLET.EnergyPerShot = 200

pewpew:AddWeapon( BULLET )
