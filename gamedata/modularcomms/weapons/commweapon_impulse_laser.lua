local name = "commweapon_impulse_laser"
local weaponDef = {
	name                    = [[Repulsor]],
	areaOfEffect            = 20,
	avoidFriendly           = false,
	avoidFeature			= false,
	beamtime				= 3/30,
	coreThickness           = 0.5,
	craterBoost             = 0,
	craterMult              = 0,
	cylinderTargeting 		= 100,
	noexplode				= true,
	explosionscar			= false,
	
	customParams            = {
		is_unit_weapon = 1,
		--muzzleEffectFire = [[custom:HEAVY_CANNON_MUZZLE]],
		--miscEffectFire = [[custom:RIOT_SHELL_H]],
		light_color = [[0.85 0.2 0.2]],
		impulse = [[50]],
	},
	damage                  = {
		default = 10.01,
	},

	edgeEffectiveness       = 0.6,
	impactOnly              = false,
	impulseBoost            = 180,
	impulseFactor           = 5,
	leadlimit               = 100,
	myGravity               = 0.01,
	falloffRate             = 0.5,
	largeBeamLaser          = true,
	laserFlareSize          = 2,
	duration				= 6/30,
	explosionGenerator      = [[custom:NONE]],
	impactOnly              = true,
	intensity               = 0.7,
	interceptedByShieldType = 0,
	noSelfDamage            = true,
	proximityPriority       = 15,
	range                   = 400,
	thickness               = 5,
	texture1                = [[spritegun]],
	texture2                = [[flare]],
	texture3                = [[flare]],
	texture4                = [[smallflare]],
	rgbColor                = [[1 0 0]],
	rgbColor2               = [[1 0.5 1]],
	reloadtime              = 6/30,
	soundHit                = [[weapon/impacts/impact-light02]],
	soundHitVolume          = 8.6,
	soundStart              = [[weapon/laser/medium_phaser]],
	turret                  = true,
	waterWeapon             = true,
	weaponType              = [[LaserCannon]],
	weaponVelocity          = 400,
}

return name, weaponDef
