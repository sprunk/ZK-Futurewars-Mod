return { 
	shieldskirm = {
		unitname               = "shieldskirm",
		name                   = "Vigilante",
		description            = "Cruise Missile Skirmisher Bot",
		activatewhenbuilt	   = true,
		acceleration           = 0.75,
		brakeRate              = 1.2,
		buildCostMetal         = 220,
		buildPic               = "shieldskirm.png",
		canGuard               = true,
		canMove                = true,
		canPatrol              = true,
		category               = "LAND",
		collisionVolumeOffsets = "0 -8 0",
		collisionVolumeScales  = "28 42 28",
		collisionVolumeType    = "cylY",
		corpse                 = "DEAD",
		customParams           = {
			aimposoffset   = "0 5 0",
			midposoffset   = "0 5 0",
			modelradius    = "14",
		},
		explodeAs              = "BIG_UNITEX",
		footprintX             = 2,
		footprintZ             = 2,
		iconType               = "walkerskirm",
		idleAutoHeal           = 5,
		idleTime               = 1800,
		leaveTracks            = true,
		maxDamage              = 440,
		maxSlope               = 36,
		maxVelocity            = 1.6,
		maxWaterDepth          = 22,
		movementClass          = "KBOT2",
		noChaseCategory        = "TERRAFORM FIXEDWING GUNSHIP SUB",
		objectName             = "storm.s3o",
		script                 = "shieldskirm.lua",
		selfDestructAs         = "BIG_UNITEX",
		sfxtypes               = {
			explosiongenerators = {
				"custom:STORMMUZZLE",
				"custom:STORMBACK",
			},
		},
		sightDistance          = 500,
		trackOffset            = 0,
		trackStrength          = 8,
		trackStretch           = 1,
		trackType              = "ComTrack",
		trackWidth             = 22,
		turnRate               = 2640,
		upright                = true,
		weapons                = {
			{
				def                = "STORM_ROCKET",
				onlyTargetCategory = "SWIM LAND SINK TURRET FLOAT SHIP HOVER",
			},
			{
				def                = "SHIELD",
			},
		},
		weaponDefs             = {
			fragment = {
				name                    = "High Explosive Warhead",
				areaOfEffect            = 90,
				burnblow                = true,
				cegTag                  = "rocket_trail_bar",
				craterBoost             = 0,
				craterMult              = 0,
				customParams        = {
					burst = Shared.BURST_RELIABLE,
					light_camera_height = 1600,
					light_color = "0.90 0.65 0.30",
					light_radius = 250,
					isflak = 3,
					flaktime = 1/30,
				},
				damage                  = {
					default = 100.01,
				},
				explosionGenerator      = "custom:xamelimpact",
				fireStarter             = 70,
				flightTime              = 2.45,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 2,
				model                   = "wep_m_ajax.s3o",
				noSelfDamage            = true,
				range                   = 420,
				reloadtime              = 3.5,
				smokeTrail              = false,
				soundHit                = "explosion/ex_med4",
				soundHitVolume          = 8,
				soundStart              = "weapon/missile/sabot_fire",
				soundStartVolume        = 7,
				startVelocity           = 200,
				tracks                  = false,
				turret                  = true,
				weaponAcceleration      = 200,
				weaponType              = "MissileLauncher",
				weaponVelocity          = 200,
			},
			STORM_ROCKET = {
				name                    = "Deluge Rocket",
				areaOfEffect            = 75,
				avoidGround             = false,
				cegTag                  = "rocket_trail_bar_flameboosted",
				craterBoost             = 1,
				craterMult              = 2,
				customParams        = {
					burst = Shared.BURST_RELIABLE,
					light_camera_height = 1800,
					numprojectiles1 = 6, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "shieldskirm_fragment",
					--spreadradius1 = 8, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
					spawndist = 130, -- at what distance should we spawn the projectile(s)? REQUIRED.
					timeoutspawn = 1, -- Can this missile spawn its subprojectiles when it times out? OPTIONAL. Default: 1.
					vradius1 = "-9,-4,-9,9,4,9", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
					reveal_unit = 3,
					cruisealt = 300,
					cruisedist = 110,
					useheight = 1,
					minvelocity = -15.5,
					cas_nocruisecheck = 1,
					cruise_noascension = 1,
					script_reload = "6.5",
					script_burst = "2",
				},
				damage                  = {
					default = 600.01,
				},
				fireStarter             = 70,
				flightTime              = 20,
				fixedLauncher			= true,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 2,
				model                   = "wep_m_hailstorm.s3o",
				noSelfDamage            = true,
				predictBoost            = 2,
				targetMoveError         = 0.4,
				range                   = 690,
				reloadtime              = 0.2,
				smokeTrail              = false,
				soundHit                = "weapon/missile/sabot_hit",
				soundHitVolume          = 8,
				soundStart              = "weapon/missile/missile2_fire_bass",
				soundStartVolume        = 7,
				startVelocity           = 200,
				trajectoryHeight        = 2.5,
				turnrate                = 60000,
				turret                  = true,
				weaponType              = "MissileLauncher",
				weaponVelocity          = 600,
				weaponAcceleration		= 300,
			},
			SHIELD = {
				name                    = "Energy Shield",	
				damage                  = {	
					default = 10,	
				},	
				exteriorShield          = true,	
				shieldAlpha             = 0.2,	
				shieldBadColor          = "1 0.1 0.1 1",	
				shieldGoodColor         = "0.1 0.1 1 1",	
				shieldInterceptType     = 3,	
				shieldPower             = 1100,	
				shieldPowerRegen        = 12,	
				shieldPowerRegenEnergy  = 0.2,	
				shieldRadius            = 80,
				shieldRepulser          = false,	
				shieldStartingPower     = 850,	
				smartShield             = true,	
				visibleShield           = false,	
				visibleShieldRepulse    = false,	
				weaponType              = "Shield",	
			},
		},
		featureDefs            = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 2,
				footprintZ       = 2,
				object           = "storm_dead.s3o",
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 2,
				footprintZ       = 2,
				object           = "debris2x2c.s3o",
			},

		},
	} 
}
