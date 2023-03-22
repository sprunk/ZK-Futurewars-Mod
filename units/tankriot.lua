return { 
	tankriot = {
		unitname            = "tankriot",
		name                = "Cobbler",
		description         = "Heavy Fire Support Tank (Skirmisher)",
		acceleration        = 0.109,
		brakeRate           = 0.428,
		buildCostMetal      = 720,
		builder             = false,
		buildPic            = "tankriot.png",
		canGuard            = true,
		canMove             = true,
		canPatrol           = true,
		category            = "LAND",
		selectionVolumeOffsets = "0 0 0",
		selectionVolumeScales  = "55 55 55",
		selectionVolumeType    = "ellipsoid",
		corpse              = "DEAD",
		customParams        = {
			cus_noflashlight  = 1,
			selection_scale   = 0.92,
			aim_lookahead     = 160,
			outline_x = 110,
			outline_y = 110,
			outline_yoff = 13.5,
		},
		explodeAs           = "BIG_UNITEX",
		footprintX          = 4,
		footprintZ          = 4,
		iconType            = "tankskirm",
		idleAutoHeal        = 5,
		idleTime            = 1800,
		leaveTracks         = true,
		maxDamage           = 3500,
		maxSlope            = 18,
		maxVelocity         = 1.6,
		maxWaterDepth       = 22,
		movementClass       = "TANK4",
		noAutoFire          = false,
		noChaseCategory     = "GUNSHIP FIXEDWING TERRAFORM SATELLITE SUB",
		objectName          = "corbanish.s3o",
		script              = "tankriot.lua",
		selfDestructAs      = "BIG_UNITEX",
		sightDistance       = 400,
		trackOffset         = 8,
		trackStrength       = 10,
		trackStretch        = 1,
		trackType           = "StdTank",
		trackWidth          = 50,
		turninplace         = 0,
		turnRate            = 568,
		weapons             = {
			{
				def                = "TAWF_BANISHER",
				mainDir            = "0 0 1",
				onlyTargetCategory = "LAND SINK TURRET SHIP SWIM FLOAT HOVER",
			},
		},
		weaponDefs          = {
			BOMBLET = {
				name                    = "Whirlwind Rocket",
				areaOfEffect            = 96,
				avoidFriendly			= false,
				collideFriendly			= false,
				craterBoost             = 0,
				craterMult              = 0,
				customParams = {
					light_camera_height = 200,
					light_color = "0.90 0.65 0.30",
					light_radius = 100,
				},
				damage                  = {
					default = 60.01,
				},
				edgeEffectiveness		= 1/3,
				explosionGenerator      = "custom:STARFIRE",
				fireStarter             = 70,
				fixedlauncher           = 1,
				flightTime              = 8,
				impactOnly              = false,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 2,
				model                   = "wep_b_fabby.s3o",
				range                   = 115,
				reloadtime              = 20,
				smokeTrail              = true,
				soundHit                = "weapon/missile/sabot_hit",
				soundHitVolume          = 5,
				soundStart              = "weapon/missile/sabot_fire_short",
				soundStartVolume        = 9,
				soundTrigger            = 1,
				startVelocity           = 50,
				texture2                = "darksmoketrail",
				tracks                  = false,
				turnRate                = 180,
				turret                  = true,
				weaponAcceleration      = 200,
				weaponType              = "MissileLauncher",
				weaponVelocity          = 300,
				dance                   = 100,
				wobble                  = 60,
			},
			TAWF_BANISHER = {
				name                    = "RM-85 Downburst Missile",
				areaOfEffect            = 160,
				cegTag                  = "BANISHERTRAIL",
				craterBoost             = 0,
				craterMult              = 0,
				customParams            = {
					burst = Shared.BURST_RELIABLE,
					force_ignore_ground = "1",
					script_reload = "10.5",
					script_burst = "4",
					numprojectiles1 = 10, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "tankriot_bomblet",
					--spreadradius1 = 4, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
					spawndist = 200, -- at what distance should we spawn the projectile(s)? REQUIRED.
					useheight = 1,
					minvelocity = -13.5,
					cruisealt = 400,
					keepmomentum1 = 0,
					cruisedist = 110,
					--cruise_nolock = 1,
					cas_nocruisecheck = 1,
					cruise_noascension = 1,
					timeoutspawn = 1, -- Can this missile spawn its subprojectiles when it times out? OPTIONAL. Default: 1.
					vradius1 = "-5,-11,-5,5,-8,5", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
					light_color = "1.4 1 0.7",
					light_radius = 120,
					cruise_useprediction = 28,
				},
				damage                  = {
					default = 60.1 * 10,
				},
				edgeEffectiveness       = 0.4,
				explosionGenerator      = "custom:xamelimpact",
				fireStarter             = 20,
				flightTime              = 20,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 2,
				model                   = "corbanishrk.s3o",
				noSelfDamage            = true,
				range                   = 780,
				reloadtime              = 0.2,
				smokeTrail              = false,
				soundHit                = "weapon/cannon/outlaw_gun",
				soundStart              = "weapon/missile/banisher_fire",
				startVelocity           = 200,
				tolerance               = 9000,
				tracks                  = true,
				trajectoryHeight        = 2.5,
				turnRate                = 63000,
				turret                  = true,
				weaponAcceleration      = 500,
				weaponType              = "MissileLauncher",
				weaponVelocity          = 700,
			},
		},
		featureDefs         = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 3,
				footprintZ       = 3,
				object           = "corbanish_dead.s3o",
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 3,
				footprintZ       = 3,
				object           = "debris3x3a.s3o",
			},
		},
	} 
}
