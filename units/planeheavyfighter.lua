local unitDef = {
	unitname               = "planeheavyfighter",
	name                   = "Hades",
	description            = "Air Superiority Fighter",
	brakerate              = 0.4,
	buildCostMetal         = 500,
	buildPic               = "planeheavyfighter.png",
	canFly                 = true,
	canGuard               = true,
	canMove                = true,
	canPatrol              = true,
	canSubmerge            = false,
	category               = "FIXEDWING",
	collide                = false,
	collisionVolumeOffsets = "0 0 5",
	collisionVolumeScales  = "30 12 50",
	collisionVolumeType    = "box",
	selectionVolumeOffsets = "0 0 10",
	selectionVolumeScales  = "60 60 80",
	selectionVolumeType    = "cylZ",
	corpse                 = "DEAD",
	crashDrag              = 0.01,
	cruiseAlt              = 350,
	customParams           = {
		midposoffset   = "0 3 0",
		aimposoffset   = "0 3 0",
		modelradius    = "10",
		refuelturnradius = "120",
		fighter_pullup_dist = 380,
		combat_slowdown = 1.3,
		selection_scale = 1.4,
		bait_level_default = 1,
		outline_x = 120,
		outline_y = 120,
		outline_yoff = 20,
	},
	explodeAs              = "GUNSHIPEX",
	fireState              = 2,
	floater                = true,
	footprintX             = 2,
	footprintZ             = 2,
	frontToSpeed           = 0.1,
	iconType               = "stealthfighter",
	idleAutoHeal           = 5,
	idleTime               = 1800,
	maxAcc                 = 0.5,
	maxRudder              = 0.006,
	maxVelocity            = 8,
	maxDamage              = 3000,
	mygravity              = 0.8,
	noChaseCategory        = "TERRAFORM",
	objectName             = "fighter2.s3o",
	script                 = "planeheavyfighter.lua",
	selfDestructAs         = "GUNSHIPEX",
	sightDistance          = 800,
	speedToFront           = 0.5,
	turnRadius             = 80,
	canLoopbackAttack      = true,
	weapons                = {
		{
			def                = "CANNON",
			mainDir            = "0 0 1",
			maxAngleDif        = 70,
			onlyTargetCategory = "LAND SINK TURRET SHIP SWIM FLOAT HOVER SINK SUB FIXEDWING GUNSHIP",
		},
		{
			def                = "CANNON",
			mainDir            = "0 0 1",
			maxAngleDif        = 70,
			onlyTargetCategory = "LAND SINK TURRET SHIP SWIM FLOAT HOVER SINK SUB FIXEDWING GUNSHIP",
		},
		{
			def                = "AA",
			badTargetCategory  = "GUNSHIP",
			mainDir            = "0 0 1",
			maxAngleDif        = 45,
			onlyTargetCategory = "FIXEDWING GUNSHIP",
		},

	},
	weaponDefs             = {
		CANNON = {
			name                    = "AP-33 Cannon",
			alphaDecay              = 0.1,
			areaOfEffect            = 8,
			colormap                = "1 0.95 0.4 1   1 0.95 0.4 1    0 0 0 0.01    1 0.7 0.2 1",
			craterBoost             = 0,
			craterMult              = 0,
			projectiles				= 2,
			customParams        = {
				light_camera_height = 1200,
				light_color = "0.8 0.76 0.38",
				light_radius = 60,
				antibaitbypass = "ärsytät minua",
			},
			damage                  = {
				default = 2.51,
			},
			explosionGenerator      = "custom:FLASHPLOSION",
			impactOnly              = true,
			impulseBoost            = 0,
			impulseFactor           = 0.4,
			intensity               = 0.7,
			interceptedByShieldType = 1,
			noGap                   = false,
			noSelfDamage            = true,
			range                   = 900,
			reloadtime              = 1/30,
			rgbColor                = "1 0.95 0.4",
			separation              = 1.5,
			size                    = 1.75,
			sizeDecay               = 0,
			soundStart              = "weapon/cannon/brrt2fixed.wav",
			soundStartVolume        = 60,
			sprayAngle              = 180,
			stages                  = 10,
			tolerance               = 5000,
			turret                  = true,
			weaponType              = "Cannon",
			weaponVelocity          = 1800,
		},
		AA = {
			name                    = "ATA Sidewinder",
			areaOfEffect            = 96,
			avoidFriendly           = true,
			canattackground         = false,
			cegTag                  = "missiletrailblue",
			collideFriendly         = false,
			craterBoost             = 1,
			craterMult              = 2,
			--cylinderTargeting       = 6,
			customParams        	  = {
				burst = Shared.BURST_RELIABLE,
				isaa = "1",
				light_color = "0.5 0.6 0.6",
				reaim_time = 60, -- Fast update not required (maybe dangerous)
				script_reload = "5",
				script_burst = "4",
			},
			damage                  = {
				default = 300.1,
			},
			explosionGenerator      = "custom:sonic",
			fireStarter             = 70,
			flightTime              = 7,
			impulseBoost            = 0,
			impulseFactor           = 0.4,
			interceptedByShieldType = 2,
			metalpershot            = 0,
			model                   = "wep_m_avalanche.s3o",
			noSelfDamage            = true,
			range                   = 1000,
			reloadtime              = 0.2,
			smokeTrail              = true,
			soundHit                = "weapon/missile/rocket_hit",
			soundStart              = "weapon/missile/sidewinder",
			startVelocity           = 200,
			texture2                = "AAsmoketrail",
			tolerance               = 22000,
			firetolerance			= 32768/4,
			tracks                  = true,
			turnRate                = 45000,
			weaponAcceleration      = 300,
			weaponType              = "MissileLauncher",
			weaponVelocity          = 1050,
		},
	},
	featureDefs            = {
		DEAD = {
			blocking         = true,
			featureDead      = "HEAP",
			footprintX       = 2,
			footprintZ       = 2,
			object           = "fighter2_dead.s3o",
		},
		HEAP = {
			blocking         = false,
			footprintX       = 2,
			footprintZ       = 2,
			object           = "debris2x2b.s3o",
		},
	},
}

return { planeheavyfighter = unitDef }
