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
BULLET.ExplosionSound = nil
BULLET.FireEffect = "cannon_flare"
BULLET.ExplosionEffect = "gcombat_explosion"

-- Movement
BULLET.Speed = 125
--BULLET.Gravity = 5
BULLET.RecoilForce = 100
BULLET.Spread = 0.2
BULLET.AffectedBySBGravity = true

-- Damage
BULLET.DamageType = "BlastDamage"
BULLET.Damage = 25
BULLET.Radius = 175
BULLET.RangeDamageMul = 2.2
BULLET.NumberOfSlices = nil
BULLET.SliceDistance = nil
BULLET.PlayerDamage = 110
BULLET.PlayerDamageRadius = 175

-- Reloading/Ammo
BULLET.Reloadtime = 0.2
BULLET.Ammo = 15
BULLET.AmmoReloadtime = 5

BULLET.EnergyPerShot = 2500

pewpew:AddWeapon( BULLET )
