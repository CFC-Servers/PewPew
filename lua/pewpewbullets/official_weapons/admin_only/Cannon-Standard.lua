-- Basic Cannon

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "Cannon-Standard [Debug]"
BULLET.Author = "Hexwolf (Base by Divran)"
BULLET.Description = "Rapid fire, low damage."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/combatmodels/tankshell.mdl"
BULLET.Material = nil
BULLET.Color = nil
BULLET.Trail = nil

-- Effects / Sounds
BULLET.FireSound = {"arty/37mm.wav"}
BULLET.ExplosionSound = nil
BULLET.FireEffect = "cannon_flare"
BULLET.ExplosionEffect = "gcombat_explosion"

-- Movement
BULLET.Speed = 175
--BULLET.Gravity = 5
BULLET.RecoilForce = 100
BULLET.Spread = 0.2
BULLET.AffectedBySBGravity = true

-- Damage
BULLET.DamageType = "SliceDamage"
BULLET.Damage = 275
BULLET.NumberOfSlices = 3
BULLET.SliceDistance = 300
BULLET.ReducedDamagePerSlice = 0

-- Reloading/Ammo
BULLET.Reloadtime = 0.2
BULLET.Ammo = 15
BULLET.AmmoReloadtime = 5

BULLET.EnergyPerShot = 2500

pewpew:AddWeapon( BULLET )
