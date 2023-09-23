return { chickenlandqueen = {
	name                   = [[Chicken Queen]],
	description            = [[Clucking Hell!]],
	acceleration           = 3.0,
	activateWhenBuilt      = true,
	autoHeal               = 0,
	brakeRate              = 18.0,
	builder                = false,
	buildPic               = [[chickenflyerqueen.png]],
	canGuard               = true,
	canMove                = true,
	canPatrol              = true,
	canSubmerge            = false,
	cantBeTransported      = true,
	category               = [[LAND]],
	collisionSphereScale   = 1,
	collisionVolumeOffsets = [[0 160 30]],
	collisionVolumeScales  = [[175 175 520]],
	collisionVolumeType    = [[cylZ]],

	customParams           = {
		selection_scale       = 2,
		
		aimposoffset   = "0 160 30",
		modelradius = 200,

		outline_x = 400,
		outline_y = 400,
		outline_yoff = 90,
	},

	explodeAs              = [[SMALL_UNITEX]],
	footprintX             = 4,
	footprintZ             = 4,
	iconType               = [[chickenq]],
	idleAutoHeal           = 200,
	idleTime               = 300,
	leaveTracks            = true,
	health                 = 1200000,
	speed                  = 2.5,
	metalCost              = 0,
	energyCost             = 0,
	buildTime              = 240000,
	minCloakDistance       = 250,
	movementClass          = [[TKBOT4]],
	noAutoFire             = false,
	noChaseCategory        = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP STUPIDTARGET MINE]],
	objectName             = [[chickenflyerqueen.s3o]],
	power                  = 65536,
	reclaimable            = false,
	script                 = [[chickenlandqueen.lua]],
	selfDestructAs         = [[SMALL_UNITEX]],

	sfxtypes               = {

		explosiongenerators = {
			[[custom:blood_spray]],
			[[custom:blood_explode]],
			[[custom:dirt]],
		},

	},
	sightDistance          = 2048,
	trackOffset            = 18,
	trackStrength          = 8,
	trackStretch           = 1,
	trackType              = [[ChickenTrack]],
	trackWidth             = 100,
	turnRate               = 480,
	upright                = true,
	workerTime             = 0,

	weapons                = {
		{
			def                = [[FIREGOO]],
			mainDir            = [[0 0 1]],
			maxAngleDif        = 150,
			onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
		},
		{
			def                = [[SPORES]],
			onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
		},
		{
			def                = [[SPORES]],
			onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
		},
		{
			def                = [[SPORES]],
			onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
		},
		{
			def                = [[DODOBOMB]],
			onlyTargetCategory = [[NONE]],
		},
		{
			def                = [[BASILISKBOMB]],
			onlyTargetCategory = [[NONE]],
		},
		{
			def                = [[TIAMATBOMB]],
			onlyTargetCategory = [[NONE]],
		},
		{
			def                = [[AEROSPORES]],
			onlyTargetCategory = [[FIXEDWING GUNSHIP]],
		},
		{
			def                = [[AEROSPORES]],
			onlyTargetCategory = [[FIXEDWING GUNSHIP]],
		},
		{
			def                = [[AEROSPORES]],
			onlyTargetCategory = [[FIXEDWING GUNSHIP]],
		},
	},


	weaponDefs             = {
	
		BASILISKBOMB = {
			name                    = [[Basilisk Bomb]],
			accuracy                = 60000,
			areaOfEffect            = 48,
			avoidFeature            = false,
			avoidFriendly           = false,
			burnblow                = true,
			collideFriendly         = false,
			craterBoost             = 1,
			craterMult              = 2,
			
			customparams            = {
					spawns_name = "chickenc",
					spawns_expire = 300,
			},

			damage                  = {
				default = 180,
			},

			explosionGenerator      = [[custom:none]],
			fireStarter             = 70,
			flightTime              = 0,
			impulseBoost            = 0,
			impulseFactor           = 0.4,
			interceptedByShieldType = 0,
			model                   = [[chickenc.s3o]],
			projectiles             = 10,
			range                   = 500,
			reloadtime              = 10,
			smokeTrail              = false,
			startVelocity           = 200,
			tolerance               = 8000,
			tracks                  = false,
			turnRate                = 4000,
			turret                  = true,
			waterweapon             = true,
			weaponAcceleration      = 200,
			weaponType              = [[AircraftBomb]],
			weaponVelocity          = 200,
		},


		DODOBOMB     = {
			name                    = [[Dodo Bomb]],
			accuracy                = 60000,
			areaOfEffect            = 1,
			avoidFeature            = false,
			avoidFriendly           = false,
			burnblow                = true,
			collideFriendly         = false,
			craterBoost             = 0,
			craterMult              = 0,
			
			customparams            = {
					spawns_name = "chicken_dodo",
					spawns_expire = 300,
			},

			damage                  = {
				default = 1,
			},

			explosionGenerator      = [[custom:none]],
			fireStarter             = 70,
			flightTime              = 0,
			impactOnly              = true,
			impulseBoost            = 0,
			impulseFactor           = 0.4,
			interceptedByShieldType = 0,
			model                   = [[chicken_dodobomb.s3o]],
			projectiles             = 10,
			range                   = 500,
			reloadtime              = 10,
			smokeTrail              = false,
			startVelocity           = 200,
			tolerance               = 8000,
			tracks                  = false,
			turnRate                = 4000,
			turret                  = true,
			waterweapon             = true,
			weaponAcceleration      = 200,
			weaponType              = [[AircraftBomb]],
			weaponVelocity          = 200,
		},

		TIAMATBOMB   = {
			name                    = [[Tiamat Bomb]],
			accuracy                = 60000,
			areaOfEffect            = 72,
			avoidFeature            = false,
			avoidFriendly           = false,
			burnblow                = true,
			collideFriendly         = false,
			craterBoost             = 1,
			craterMult              = 2,
			
			customparams            = {
					spawns_name = "chicken_tiamat",
					spawns_expire = 300,
			},

			damage                  = {
				default = 350,
			},

			explosionGenerator      = [[custom:none]],
			fireStarter             = 70,
			flightTime              = 0,
			impulseBoost            = 0,
			impulseFactor           = 0.4,
			interceptedByShieldType = 0,
			model                   = [[chickenbroodqueen.s3o]],
			projectiles             = 10,
			noSelfDamage            = true,
			range                   = 500,
			reloadtime              = 10,
			smokeTrail              = false,
			startVelocity           = 200,
			tolerance               = 8000,
			tracks                  = false,
			turnRate                = 4000,
			turret                  = true,
			waterweapon             = true,
			weaponAcceleration      = 200,
			weaponType              = [[AircraftBomb]],
			weaponVelocity          = 200,
		},
		FIREGOO    = {
			name                    = [[Napalm Goo]],
			areaOfEffect            = 256,
			burst                   = 8,
			burstrate               = 0.033,
			projectiles             = 8,
			cegTag                  = [[queen_trail_fire]],
			
			customParams            = {
				light_radius = 500,
				armorpiercing = 0.15,
			},
			
			craterBoost             = 0,
			craterMult              = 0,

			damage                  = {
				default = 300,
				planes  = 300,
			},

			explosionGenerator      = [[custom:napalm_koda]],
			firestarter             = 400,
			impulseBoost            = 0,
			impulseFactor           = 0.4,
			intensity               = 0.7,
			interceptedByShieldType = 1,
			noSelfDamage            = true,
			proximityPriority       = -4,
			range                   = 1440,
			reloadtime              = 6,
			rgbColor                = [[0.8 0.4 0]],
			size                    = 8,
			sizeDecay               = 0,
			soundHit                = [[weapon/burn_mixed]],
			soundStart              = [[chickens/bigchickenroar]],
			sprayAngle              = 6100,
			tolerance               = 5000,
			turret                  = true,
			weaponType              = [[Cannon]],
			weaponVelocity          = 720,
		},
		AEROSPORES  = {
			name                    = [[Anti-Air Spores]],
			areaOfEffect            = 200,
			avoidFriendly           = false,
			burst                   = 16,
			burstrate               = 1/30,
			canAttackGround         = false,
			collideFriendly         = false,
			craterBoost             = 0,
			craterMult              = 0,
			
			customParams            = {
				light_radius = 0,
				armorpiercing = 0.4,
			},
			
			damage                  = {
				default = 250/20,
				planes  = 250,
			},

			dance                   = 120,
			explosionGenerator      = [[custom:large_green_goo]],
			fireStarter             = 0,
			fixedlauncher           = 1,
			flightTime              = 5,
			groundbounce            = 1,
			heightmod               = 0.5,
			impulseBoost            = 0,
			impulseFactor           = 0.4,
			interceptedByShieldType = 2,
			model                   = [[chickeneggblue.s3o]],
			noSelfDamage            = true,
			range                   = 1400,
			reloadtime              = 2,
			smokeTrail              = true,
			startVelocity           = 50,
			texture1                = [[]],
			texture2                = [[sporetrailblue]],
			tolerance               = 10000,
			tracks                  = true,
			turnRate                = 72000,
			turret                  = true,
			waterweapon             = true,
			weaponAcceleration      = 400,
			weaponType              = [[MissileLauncher]],
			weaponVelocity          = 2000,
			wobble                  = 96000,
		},
		SPORES       = {
			name                    = [[Spores]],
			areaOfEffect            = 96,
			avoidFriendly           = false,
			burst                   = 16,
			burstrate               = 2/30,
			collideFriendly         = false,
			craterBoost             = 0,
			craterMult              = 0,
			
			customParams            = {
				light_radius = 0,
				armorpiercing = 0.4,
			},

			damage                  = {
				default = 750,
			},

			dance                   = 90,
			explosionGenerator      = [[custom:green_goo]],
			fireStarter             = 0,
			fixedlauncher           = true,
			flightTime              = 5,
			groundbounce            = 1,
			heightmod               = 0.5,
			impulseBoost            = 0,
			impulseFactor           = 0.4,
			interceptedByShieldType = 2,
			metalpershot            = 0,
			model                   = [[chickeneggpink.s3o]],
			noSelfDamage            = true,
			range                   = 1000,
			reloadtime              = 2,
			smokeTrail              = true,
			sprayangle              = 4096,
			startVelocity           = 50,
			texture1                = [[]],
			texture2                = [[sporetrail]],
			tolerance               = 10000,
			tracks                  = true,
			turnRate                = 24000,
			turret                  = true,
			waterweapon             = true,
			weaponAcceleration      = 200,
			weaponType              = [[MissileLauncher]],
			weaponVelocity          = 1000,
			wobble                  = 48000,
		},

	},

} }
