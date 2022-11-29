return { 
	vehraid = {
		unitname               = "vehraid",
		name                   = "Sunbeam",
		description            = "Raider Rover",
		acceleration           = 0.342,
		brakeRate              = 0.84,
		buildCostMetal         = 100,
		builder                = false,
		buildPic               = "vehraid.png",
		canGuard               = true,
		canMove                = true,
		canPatrol              = true,
		category               = "LAND TOOFAST",
		collisionVolumeOffsets = "0 -5 0",
		collisionVolumeScales  = "26 26 36",
		collisionVolumeType    = "cylZ",
		selectionVolumeOffsets = "0 0 0",
		selectionVolumeScales  = "28 28 34",
		selectionVolumeType    = "cylZ",
		corpse                 = "DEAD",
		customParams           = {
			modelradius        = "10",
			aim_lookahead      = 160,
			specialreloadtime = "300",
		},
		explodeAs              = "BIG_UNITEX",
		footprintX             = 2,
		footprintZ             = 2,
		iconType               = "vehicleraider",
		idleAutoHeal           = 5,
		idleTime               = 1800,
		leaveTracks            = true,
		maxDamage              = 420,
		maxSlope               = 18,
		maxVelocity            = 4,
		maxWaterDepth          = 22,
		movementClass          = "TANK2",
		noAutoFire             = false,
		noChaseCategory        = "TERRAFORM FIXEDWING SATELLITE SUB",
		objectName             = "corgator_512.s3o",
		script                 = "vehraid.lua",
		selfDestructAs         = "BIG_UNITEX",
		sfxtypes               = {
			explosiongenerators = {
				"custom:BEAMWEAPON_MUZZLE_ORANGE_SMALL",
				"custom:flamer",
			},
		},
		sightDistance          = 560,
		trackOffset            = 5,
		trackStrength          = 5,
		trackStretch           = 1,
		trackType              = "StdTank",
		trackWidth             = 28,
		turninplace            = 0,
		turnRate               = 1125,
		workerTime             = 0,
		weapons                = {
			{
				def                = "HEATRAY",
				badTargetCategory  = "FIXEDWING",
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER",
			},
		},
		weaponDefs             = {
			HEATRAY = {
				name                    = "Heat Ray",
				areaOfEffect            = 20,
				beamtime				= 4/30,
				coreThickness           = 0.9,
				craterBoost             = 0,
				craterMult              = 0,
				cylinderTargeting 		= 0.6,
				explosionScar			= false,
				customParams        = {
					light_camera_height = 1500,
					light_color = "0.9 0.4 0.12",
					light_radius = 100,
					light_fade_time = 25,
					light_fade_offset = 10,
					light_beam_mult_frames = 9,
					light_beam_mult = 8,
					sweepfire = 1,
					sweepfire_maxangle = 30,
					sweepfire_step = 1.5,
					sweepfire_fastupdate = 1,
				},
				damage                  = {
					default = 55.1,
				},
				duration                = 0.3,
				dynDamageExp            = 1,
				dynDamageInverted       = false,
				explosionGenerator      = "custom:HEATRAY_HIT",
				fallOffRate             = 1,
				fireStarter             = 90,
				impactOnly              = true,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				leadLimit               = 0,
				lodDistance             = 10000,
				noSelfDamage            = true,
				proximityPriority       = 10,
				range                   = 270,
				reloadtime              = 0.1,
				rgbColor                = "1 0.54 0",
				rgbColor2               = "1 1 0.25",
				soundStart              = "weapon/heatray_fire",
				thickness               = 2,
				tolerance               = 5000,
				turret                  = true,
				weaponType              = "BeamLaser",
				weaponVelocity          = 500,
			},
		},
		featureDefs            = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 2,
				footprintZ       = 2,
				object           = "gatorwreck.s3o",
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
