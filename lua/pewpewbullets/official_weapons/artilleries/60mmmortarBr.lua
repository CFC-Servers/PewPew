-- Modifiable Artillery

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "60mm Mortar Barrage (HE)"
BULLET.Author = "Hexwolf (Base by Divran)"
BULLET.Description = "A 60mm mortar which fires in a heavy arch."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/combatmodels/tankshell.mdl"
BULLET.Material = "phoenix_storms/gear"
BULLET.Color = nil
BULLET.Trail = { StartSize = 7,
				 EndSize = 0,
				 Length = 0.6,
				 Texture = "trails/smoke.vmt",
				 Color = Color( 200, 200, 200, 255 ) }

-- Effects / Sounds
BULLET.FireSound = {"weapons/mortar/mortar_fire1.wav"}
BULLET.ExplosionSound = {"weapons/explode1.wav","weapons/explode2.wav"} -- the sound is included in the effect
BULLET.FireEffect = nil
BULLET.ExplosionEffect = "HEATsplode"
BULLET.EmptyMagSound = nil

-- Movement
BULLET.Speed = 40
BULLET.Gravity = 0.4
BULLET.RecoilForce = 500
BULLET.Spread = 0.1
BULLET.AffectedBySBGravity = true

-- Damage
BULLET.DamageType = "BlastDamage" -- Look in gcombat_damagecontrol.lua for available damage types
BULLET.Damage = 350
BULLET.Radius = 400
BULLET.RangeDamageMul = 2.6
BULLET.NumberOfSlices = nil
BULLET.SliceDistance = nil
BULLET.PlayerDamage = 110
BULLET.PlayerDamageRadius = 400

-- Reloading/Ammo
BULLET.Reloadtime = 0.03
BULLET.Ammo = 5
BULLET.AmmoReloadtime = 30

-- Other
BULLET.Lifetime = nil
BULLET.ExplodeAfterDeath = false
BULLET.EnergyPerShot = 1000

BULLET.CustomInputs = { "Fire", "Reload", "Speed" }
BULLET.CustomOutputs = nil

BULLET.UseOldSystem = true

pewpew:AddWeapon( BULLET )
