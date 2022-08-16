return { 
	cloakriottest = {
		unitname               = [[cloakriottest]],
		name                   = [[Assailant]],
		description            = [[Stealthy Machine Gun Bot]],
		acceleration           = 0.75,
		brakeRate              = 1.2,
		buildCostMetal         = 300,
		buildPic               = [[cloakriot.png]],
		canGuard               = true,
		canMove                = true,
		canPatrol              = true,
		canCloak			   = true,
		category               = [[LAND]],
		collisionVolumeOffsets = [[0 1 -1]],
		collisionVolumeScales  = [[35 45 35]],
		collisionVolumeType    = [[cylY]],
		selectionVolumeOffsets = [[0 0 0]],
		selectionVolumeScales  = [[50 50 50]],
		selectionVolumeType    = [[ellipsoid]],
		corpse                 = [[DEAD]],
		stealth = true,
		activateWhenBuilt = true,
		initCloaked = true,
		cloakCostMoving = 3,
		cloakCost    = 0.3,
		customParams           = {
			modelradius       = [[7]],
			cus_noflashlight  = 1,
			selection_scale   = 0.85,
			aim_lookahead     = 120,
			cloakregen		  = 15,
			recloaktime 	  = 300,
			cloaker_bestowed_radius = 92,
			outline_x = 80,
			outline_y = 80,
			outline_yoff = 15.5,
			needsfirecontrol = 1,
			cloakstrikeduration = 50,
			cloakstrikespeed = 1.33,
			cloakstrikeslow = 0.85,
		},
		explodeAs              = [[SMALL_UNITEX]],
		footprintX             = 3,
		footprintZ             = 3,
		iconType               = [[kbotriot]],
		leaveTracks            = true,
		maxDamage              = 1425,
		maxSlope               = 36,
		maxVelocity            = 1.9,
		maxWaterDepth          = 22,
		minCloakDistance       = 230,
		movementClass          = [[KBOT3]],
		noChaseCategory        = [[TERRAFORM FIXEDWING SUB]],
		objectName             = [[Spherewarrior.dae]],
		script                 = [[cloakriot.lua]],
		selfDestructAs         = [[SMALL_UNITEX]],
		sfxtypes               = {
			explosiongenerators = {
				[[custom:RAIDMUZZLE]],
				[[custom:emg_shells_l]],
			},
		},
		sightDistance          = 500,
		trackOffset            = 0,
		trackStrength          = 8,
		trackStretch           = 0.8,
		trackType              = [[ComTrack]],
		trackWidth             = 20,
		turnRate               = 2160,
		upright                = true,
		weapons                = {
			{
				def                = [[WARRIOR_WEAPON]],
				badTargetCategory  = [[FIXEDWING]],
				onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
			},
		},
		weaponDefs             = {
			WARRIOR_WEAPON = {
				name                    = [[Heavy Machine gun]],
				accuracy                = 1000,
				alphaDecay              = 0.7,
				areaOfEffect            = 96,
				burnblow                = false,
				craterBoost             = 0,
				craterMult              = 0,
				customParams        = {
					light_camera_height = 1600,
					light_color = [[0.8 0.76 0.38]],
					light_radius = 150,
					script_reload = [[0.8]],
					sweepfire = 1,
					sweepfire_maxangle = 30,
					sweepfire_step = 3,
					sweepfire_maxrangemult = 0.95,
					recycler = 1,
					recycle_reductiontime = 0.1,
					recycle_reduction = 0.1,
					recycle_bonus = 0.45,
					recycle_reductionframes = 0.5,
					recycle_maxbonus = 24,
					recycle_maxbonus = 20,
					isFlak = 3,
					flaktime = 5,
					cloakstrike = 1.4,
					reaim_time = 1, -- fast update needed
				},
				damage                  = {
					default = 36.01,
				},
				edgeEffectiveness       = 0.5,
				explosionGenerator      = [[custom:EMG_HIT_HE]],
				firestarter             = 70,
				impulseBoost            = 0,
				impulseFactor           = 0.1,
				intensity               = 0.7,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				range                   = 340,
				reloadtime              = 1/30,
				mygravity				= 0.02,
				rgbColor                = [[1 0.95 0.4]],
				separation              = 1.5,
				soundHit                = [[weapon/cannon/emg_hit]],
				soundStart              = [[weapon/sd_emgv7]],
				stages                  = 18,
				turret                  = true,
				weaponType              = [[Cannon]],
				weaponVelocity          = 880,
			},
		},
		featureDefs            = {
			DEAD  = {
				blocking         = true,
				featureDead      = [[HEAP]],
				footprintX       = 2,
				footprintZ       = 2,
				object           = [[spherewarrior_dead.s3o]],
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 2,
				footprintZ       = 2,
				object           = [[debris3x3a.s3o]],
			},
		},
	} 
}
