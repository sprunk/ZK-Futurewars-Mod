return { 
	shieldskirm = {
		unitname               = [[shieldskirm]],
		name                   = [[Rogue]],
		description            = [[Skirmisher Bot (Indirect Fire)]],
		activatewhenbuilt	   = true,
		acceleration           = 0.75,
		brakeRate              = 1.2,
		buildCostMetal         = 120,
		buildPic               = [[shieldskirm.png]],
		canGuard               = true,
		canMove                = true,
		canPatrol              = true,
		category               = [[LAND]],
		collisionVolumeOffsets = [[0 -8 0]],
		collisionVolumeScales  = [[28 42 28]],
		collisionVolumeType    = [[cylY]],
		corpse                 = [[DEAD]],
		customParams           = {
			aimposoffset   = [[0 5 0]],
			midposoffset   = [[0 5 0]],
			modelradius    = [[14]],
		},
		explodeAs              = [[BIG_UNITEX]],
		footprintX             = 2,
		footprintZ             = 2,
		iconType               = [[walkerskirm]],
		idleAutoHeal           = 5,
		idleTime               = 1800,
		leaveTracks            = true,
		maxDamage              = 580,
		maxSlope               = 36,
		maxVelocity            = 1.95,
		maxWaterDepth          = 22,
		minCloakDistance       = 75,
		movementClass          = [[KBOT2]],
		noChaseCategory        = [[TERRAFORM FIXEDWING GUNSHIP SUB]],
		objectName             = [[storm.s3o]],
		script                 = [[shieldskirm.lua]],
		selfDestructAs         = [[BIG_UNITEX]],
		sfxtypes               = {
			explosiongenerators = {
				[[custom:STORMMUZZLE]],
				[[custom:STORMBACK]],
			},
		},
		sightDistance          = 583,
		trackOffset            = 0,
		trackStrength          = 8,
		trackStretch           = 1,
		trackType              = [[ComTrack]],
		trackWidth             = 22,
		turnRate               = 2640,
		upright                = true,
		weapons                = {
			{
				def                = [[STORM_ROCKET]],
				onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
			},
			{
				def                = [[SHIELD]],
			},
		},
		weaponDefs             = {
	
			fragment = {
				name                    = [[Rocket]],
				areaOfEffect            = 75,
				burnblow                = true,
				cegTag                  = [[rocket_trail_bar]],
				craterBoost             = 0,
				craterMult              = 0,
				customParams        = {
					burst = Shared.BURST_RELIABLE,
					light_camera_height = 1600,
					light_color = [[0.90 0.65 0.30]],
					light_radius = 250,
				},
				damage                  = {
					default = 150,
				},
				explosionGenerator      = [[custom:xamelimpact]],
				fireStarter             = 70,
				flightTime              = 2.45,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 2,
				model                   = [[wep_m_ajax.s3o]],
				noSelfDamage            = true,
				range                   = 455,
				reloadtime              = 3.5,
				smokeTrail              = false,
				soundHit                = [[explosion/ex_med4]],
				soundHitVolume          = 8,
				soundStart              = [[weapon/missile/sabot_fire]],
				soundStartVolume        = 7,
				startVelocity           = 200,
				tracks                  = false,
				turret                  = true,
				weaponAcceleration      = 200,
				weaponType              = [[MissileLauncher]],
				weaponVelocity          = 200,
			},
			STORM_ROCKET = {
				name                    = [[Heavy Rocket]],
				areaOfEffect            = 75,
				cegTag                  = [[rocket_trail_bar_flameboosted]],
				craterBoost             = 1,
				craterMult              = 2,
				customParams        = {
					burst = Shared.BURST_RELIABLE,
					light_camera_height = 1800,
					cruisealt			= 75,
					cruisedist			= 340,
					numprojectiles = 3, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile = "shieldskirm_fragment",
					--spreadradius = 8, -- used in clusters. OPTIONAL. Default: 100.
					clustervec = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
					spawndist = 70, -- at what distance should we spawn the projectile(s)? REQUIRED.
					airlaunched = 1,
					timeoutspawn = 1, -- Can this missile spawn its subprojectiles when it times out? OPTIONAL. Default: 1.
					vradius = "-2,0,-2,2,1,2", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
					useheight = 1,
				},
				damage                  = {
					default = 450,
				},
				fireStarter             = 70,
				flightTime              = 3.5,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 2,
				model                   = [[wep_m_hailstorm.s3o]],
				noSelfDamage            = true,
				predictBoost            = 0.75,
				range                   = 660,
				reloadtime              = 10,
				smokeTrail              = false,
				soundHit                = [[weapon/missile/sabot_hit]],
				soundHitVolume          = 8,
				soundStart              = [[weapon/missile/missile2_fire_bass]],
				soundStartVolume        = 7,
				startVelocity           = 192,
				tracks                  = true,
				trajectoryHeight        = 0.45,
				turnrate                = 12000,
				turret                  = true,
				weaponType              = [[MissileLauncher]],
				weaponVelocity          = 600,
				weaponAcceleration		= 145,
			},
			SHIELD = {
				name                    = [[Energy Shield]],	
				damage                  = {	
					default = 10,	
				},	
				exteriorShield          = true,	
				shieldAlpha             = 0.2,	
				shieldBadColor          = [[1 0.1 0.1 1]],	
				shieldGoodColor         = [[0.1 0.1 1 1]],	
				shieldInterceptType     = 3,	
				shieldPower             = 1250,	
				shieldPowerRegen        = 16,	
				shieldPowerRegenEnergy  = 0,	
				shieldRadius            = 80,	
				shieldRepulser          = false,	
				shieldStartingPower     = 850,	
				smartShield             = true,	
				visibleShield           = false,	
				visibleShieldRepulse    = false,	
				weaponType              = [[Shield]],	
			},
		},
		featureDefs            = {
			DEAD  = {
				blocking         = true,
				featureDead      = [[HEAP]],
				footprintX       = 2,
				footprintZ       = 2,
				object           = [[storm_dead.s3o]],
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 2,
				footprintZ       = 2,
				object           = [[debris2x2c.s3o]],
			},

		},
	} 
}
