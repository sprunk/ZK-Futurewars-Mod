-- Original UnitDef by Tankium

return { 
	dronecarry = {
		unitname            = [[dronecarry]],
		name                = [[Gull]],
		description         = [[Carrier Drone]],
		acceleration        = 0.3,
		airHoverFactor      = 4,
		brakeRate           = 0.24,
		buildCostMetal      = 15,
		builder             = false,
		buildPic            = [[dronecarry.png]],
		canBeAssisted       = false,
		canFly              = true,
		canGuard            = true,
		canMove             = true,
		canPatrol           = true,
		canSubmerge         = false,
		category            = [[GUNSHIP DRONE]],
		collisionVolumeOffsets   = [[0 0 0]],
		collisionVolumeScales    = [[26 26 26]],
		collisionVolumeType      = [[ellipsoid]],
		collide             = false,
		cruiseAlt           = 100,
		explodeAs           = [[TINY_BUILDINGEX]],
		floater             = true,
		footprintX          = 2,
		footprintZ          = 2,
		hoverAttack         = true,
		iconType            = [[smallgunship]],
		maneuverleashlength = [[5000]],
		idleAutoHeal        = 10,
		idleTime            = 300,
		maxDamage           = 180,
		maxVelocity         = 8.56,
		noAutoFire          = false,
		noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
		objectName          = [[carrydrone.s3o]],
		reclaimable         = false,
		repairable          = false, -- mostly not to waste constructor attention on area-repair; has regen anyway
		script              = [[dronecarry.lua]],
		selfDestructAs      = [[TINY_BUILDINGEX]],
  
		customParams        = {
			bait_level_target      = 1,
			is_drone = 1,
			modelradius    = [[13]],
		},
		sfxtypes            = {
			explosiongenerators = {
				[[custom:brawlermuzzle]],
				[[custom:emg_shells_m]],
			},
		},
		sightDistance       = 500,
		turnRate            = 792,
		upright             = true,
		weapons                = {
			{
				def                = [[STORM_ROCKET]],
				onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
			},
			{
				def                = [[LASER]],
				badTargetCategory  = [[FIXEDWING]],
				onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
			},
			{
			   def                = [[ARMRL_MISSILE]],
			   --badTargetCategory  = [[HOVER SWIM LAND SINK FLOAT SHIP]],
			   onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
		    },
			{
				def                = [[SHIELD]],
			},
		},
		weaponDefs             = {
	
			fragment = {
				name                    = [[High Explosive Warhead]],
				areaOfEffect            = 90,
				burnblow                = true,
				cegTag                  = [[rocket_trail_bar]],
				craterBoost             = 0,
				craterMult              = 0,
				customParams        = {
					burst = Shared.BURST_RELIABLE,
					light_camera_height = 1600,
					light_color = [[0.90 0.65 0.30]],
					light_radius = 250,
					isflak = 3,
					flaktime = 1/30,
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
				range                   = 420,
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
					numprojectiles1 = 3, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "shieldskirm_fragment",
					--spreadradius1 = 8, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
					spawndist = 180, -- at what distance should we spawn the projectile(s)? REQUIRED.
					timeoutspawn = 1, -- Can this missile spawn its subprojectiles when it times out? OPTIONAL. Default: 1.
					vradius1 = "-4,-1,-4,4,1,4", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
					reveal_unit = 3,
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
				range                   = 540,
				reloadtime              = 6.5,
				smokeTrail              = false,
				soundHit                = [[weapon/missile/sabot_hit]],
				soundHitVolume          = 8,
				soundStart              = [[weapon/missile/missile2_fire_bass]],
				soundStartVolume        = 7,
				startVelocity           = 192,
				trajectoryHeight        = 1.25,
				turnrate                = 12000,
				turret                  = true,
				weaponType              = [[MissileLauncher]],
				weaponVelocity          = 600,
				weaponAcceleration		= 145,
			},
			LASER = {
				name                    = [[Laser Machinegun]],
				areaOfEffect            = 8,
				accuracy				= 250,
				coreThickness           = 0.5,
				beamTime                = 0.1,
				craterBoost             = 0,
				craterMult              = 0,
				
				customParams        = {
					light_camera_height = 1200,
					light_radius = 20,
					sweepfire = 1,
					sweepfire_maxangle = 45,
					sweepfire_step = 0.5,
					sweepfire_fastupdate = 1,
				},
      
				damage                  = {
					default = 22.1,
				},

				duration                = 8/10,
				explosionGenerator      = [[custom:heavybeamyellowimpactsmall]],
				fireStarter             = 100,
				impactOnly              = true,
				impulseBoost            = 0,
				impulseFactor           = 1.1,
				interceptedByShieldType = 1,
				leadLimit               = 0,
				noSelfDamage            = true,
				range                   = 480,
				reloadtime              = 0.233,
				rgbColor                = [[0 1 1]],
				rgbColor2				= [[0.902 0.682 0.145]],
				soundStart              = [[weapon/laser/yellow_laser]],
				soundstartvolume	    = 65,
				thickness               = 2.75,
				tolerance               = 10000,
				turret                  = true,
				weaponType              = [[BeamLaser]],
				weaponVelocity          = 880,
			},
			ARMRL_MISSILE = {
				name                    = [[Light Missiles]],
				areaOfEffect            = 8,
				avoidFeature            = true,
				cegTag                  = [[missiletrailyellow]],
				craterBoost             = 0,
				craterMult              = 0,
				cylinderTargeting       = 5,

				customParams            = {
					burst = Shared.BURST_RELIABLE,
					isaa = [[1]],
					light_camera_height = 2000,
					light_radius = 200,
				},

				damage                  = {
					default = 25,
				},

				explosionGenerator      = [[custom:FLASH2]],
				fireStarter             = 70,
				flightTime              = 4,
				impactOnly              = true,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 2,
				metalpershot            = 0,
				model                   = [[hobbes.s3o]],
				noSelfDamage            = true,
				range                   = 610,
				reloadtime              = 0.5,
				smokeTrail              = true,
				soundHit                = [[explosion/ex_med12]],
				soundStart              = [[weapon/missile/missile_fire7]],
				startVelocity           = 500,
				texture2                = [[lightsmoketrail]],
				tolerance               = 10000,
				tracks                  = true,
				turnRate                = 60000,
				turret                  = true,
				weaponAcceleration      = 300,
				weaponType              = [[MissileLauncher]],
				weaponVelocity          = 750,
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
				shieldPower             = 850,	
				shieldPowerRegen        = 12,	
				shieldPowerRegenEnergy  = 0.2,	
				shieldRadius            = 40,	
				shieldRepulser          = false,	
				shieldStartingPower     = 850,	
				smartShield             = true,	
				visibleShield           = false,	
				visibleShieldRepulse    = false,	
				weaponType              = [[Shield]],	
			},
		},
	} 
}
