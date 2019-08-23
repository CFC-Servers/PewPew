-- Basic Cannon

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "40mm Auto Cannon (HE)"
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
BULLET.FireSound = {"arty/40mm.wav"}
BULLET.ExplosionSound = {"weapons/explode1.wav","weapons/explode2.wav"}
BULLET.FireEffect = "cannon_flare"
BULLET.ExplosionEffect = "HEATsplode"

-- Movement
BULLET.Speed = 120
BULLET.Gravity = 0.1
BULLET.RecoilForce = 120
BULLET.Spread = 0
BULLET.AffectedBySBGravity = true

-- Damage
BULLET.DamageType = "BlastDamage"
BULLET.Damage = 200
BULLET.Radius = 225
BULLET.RangeDamageMul = 2.2
BULLET.PlayerDamage = 110
BULLET.PlayerDamageRadius = 225

-- Reloading/Ammo
BULLET.Reloadtime = 0.6
BULLET.Ammo = 15
BULLET.AmmoReloadtime = 4

BULLET.EnergyPerShot = 3400

pewpew:AddWeapon( BULLET )
