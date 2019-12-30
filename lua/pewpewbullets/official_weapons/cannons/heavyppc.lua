-- Railgun

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "Heavy Particle Projection Cannon "
BULLET.Author = "Hexwolf (Base by Colonel Thirty Two)"
BULLET.Description = "Fires a condensed ball of superheated particles."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/combatmodels/tankshell_230mm.mdl"
BULLET.Material = nil
BULLET.Color = Color( 0, 191, 255 )
BULLET.Trail = { StartSize = 7,
				 EndSize = 0,
				 Length = 0.6,
				 Texture = "trails/smoke.vmt",
				 Color = Color( 0, 191, 255, 255 ) }

-- Effects / Sounds
BULLET.FireSound = {"col32/bomb3.wav"}
BULLET.ExplosionSound = {"weapons/explode1.wav","weapons/explode2.wav"}
BULLET.FireEffect = "muzzleflash"
BULLET.ExplosionEffect = "HEATsplode"

-- Movement
BULLET.Speed = 95 -- 125 reduced due to the probable want to make it have higher arcs
--BULLET.Gravity = 0.01
BULLET.RecoilForce = 500
BULLET.Spread = 0
BULLET.AffectedBySBGravity = true

-- Damage
BULLET.DamageType = "BlastDamage"
BULLET.Damage = 1000
BULLET.Radius = 350
BULLET.Duration = 10
BULLET.RangeDamageMul = 2.2
BULLET.PlayerDamage = 150
BULLET.PlayerDamageRadius = 300

-- Reload/Ammo
BULLET.Reloadtime = 15
BULLET.Ammo = 0
BULLET.AmmoReloadtime = 0

BULLET.ExplodeAfterDeath = true
BULLET.EnergyPerShot = 6000

pewpew:AddWeapon( BULLET )
