local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "12.7mm machinegun"
BULLET.Author = "Hexwolf (Base by Divran)"
BULLET.Description = "12.7mm machinegun."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/combatmodels/tankshell_25mm.mdl"
BULLET.Material = nil
BULLET.Color = nil
BULLET.Trail = nil

-- Effects / Sounds
BULLET.FireSound = {"arty/50cal.wav"}
BULLET.ExplosionSound = nil
BULLET.FireEffect = "muzzleflash"
BULLET.ExplosionEffect = "mghit"
BULLET.EmptyMagSound = {"weapons/shotgun/shotgun_empty.wav"}

-- Movement
BULLET.Speed = 100
--BULLET.Gravity = 0.15
BULLET.RecoilForce = 50
BULLET.Spread = 0.4
BULLET.AffectedBySBGravity = true

-- Damage
BULLET.DamageType = "PointDamage"
BULLET.Damage = 30
BULLET.Radius = nil
BULLET.RangeDamageMul = nil
BULLET.NumberOfSlices = nil
BULLET.SliceDistance = nil
BULLET.PlayerDamage = nil
BULLET.PlayerDamageRadius = nil

-- Reloading/Ammo
BULLET.Reloadtime = 0.3
BULLET.Ammo = 0
BULLET.AmmoReloadtime = 0

BULLET.EnergyPerShot = 300

pewpew:AddWeapon( BULLET )
