-- Basic Cannon

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "120mm Cannon (APHE)"
BULLET.Author = "Chippy"
BULLET.Description = "120mm Armor Piercing High Explosive tank cannon."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/combatmodels/tankshell_120mm.mdl"
BULLET.Material = nil
BULLET.Color = nil
BULLET.Trail = nil

-- Effects / Sounds
BULLET.FireSound = {"chippy/120mm.wav"}
BULLET.ExplosionSound = {"weapons/explode1.wav","weapons/explode2.wav"}
BULLET.FireEffect = "cannon_flare"
BULLET.ExplosionEffect = "HEATsplode"

-- Movement
BULLET.Speed = 140
--BULLET.Gravity = 0.056
BULLET.RecoilForce = 800
BULLET.Spread = 0
BULLET.AffectedBySBGravity = true

-- Damage
BULLET.DamageType = "APHEDamage" -- Look in gcombat_damagecontrol.lua for available damage types
BULLET.Radius = 500
BULLET.RangeDamageMul = 2.6
BULLET.Damage = 1000
BULLET.NumberOfSlices = 3
BULLET.SliceDistance = 650
BULLET.ReducedDamagePerSlice = 0

-- Reloading/Ammo
BULLET.Reloadtime = 9
BULLET.Ammo = 0
BULLET.AmmoReloadtime = 0

BULLET.EnergyPerShot = 14000

pewpew:AddWeapon( BULLET )
