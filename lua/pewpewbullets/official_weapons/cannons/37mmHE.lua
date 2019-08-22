-- Basic Cannon

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "37mm Auto Cannon (HE)"
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
BULLET.ExplosionSound = {"weapons/explode1.wav","weapons/explode2.wav"}
BULLET.FireEffect = "cannon_flare"
BULLET.ExplosionEffect = "HEATsplode"

-- Movement
BULLET.Speed = 125
BULLET.Gravity = 0.1
BULLET.RecoilForce = 100
BULLET.Spread = 0
BULLET.AffectedBySBGravity = true

-- Damage
BULLET.DamageType = "BlastDamage"
BULLET.Damage = 150
BULLET.Radius = 175
BULLET.RangeDamageMul = 2.2
BULLET.NumberOfSlices = nil
BULLET.SliceDistance = nil
BULLET.PlayerDamage = 110
BULLET.PlayerDamageRadius = 175

-- Reloading/Ammo
BULLET.Reloadtime = 1
BULLET.Ammo = 15
BULLET.AmmoReloadtime = 3

BULLET.EnergyPerShot = 2500

pewpew:AddWeapon( BULLET )
