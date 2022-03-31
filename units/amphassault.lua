return { 
	amphassault = {
		unitname            = [[amphassault]],
		name                = [[Breaker]],
		description         = [[Heavy Amphibious Assault Walker]],
		acceleration        = 0.3,
		activateWhenBuilt   = true,
		brakeRate           = 1.8,
		buildCostMetal      = 4500,
		buildPic            = [[amphassault.png]],
		canGuard            = true,
		canMove             = true,
		canPatrol           = true,
		category            = [[LAND SINK]],
		collisionVolumeOffsets  = [[0 0 0]],
		--collisionVolumeScales = [[70 70 70]],
		--collisionVolumeType   = [[ellipsoid]],
		corpse              = [[DEAD]],

		customParams        = {
			amph_regen = 200,
			amph_submerged_at = 40,
			sink_on_emp    = 0,
			floattoggle    = [[1]],
			aimposoffset   = [[0 30 0]],
			midposoffset   = [[0 6 0]],
			modelradius    = [[42]],
		},

		explodeAs           = [[BIG_UNIT]],
		footprintX          = 4,
		footprintZ          = 4,
		iconType            = [[amphassault]],
		idleAutoHeal        = 5,
		idleTime            = 1800,
		leaveTracks         = true,
		maxDamage           = 27000,
		maxSlope            = 36,
		maxVelocity         = 1.1,
		maxReverseVelocity  = 0,
		minCloakDistance    = 75,
		movementClass       = [[AKBOT4]],
		noChaseCategory     = [[TERRAFORM FIXEDWING SUB]],
		objectName          = [[amphassault.s3o]],
		script              = [[amphassault.lua]],
		selfDestructAs      = [[BIG_UNIT]],

		sfxtypes            = {
			explosiongenerators = {
				[[custom:RAIDMUZZLE]],
			},
		},

		sightDistance       = 860,
		sonarDistance       = 860,
		trackOffset         = 0,
		trackStrength       = 8,
		trackStretch        = 1,
		trackType           = [[ComTrack]],
		trackWidth          = 66,
		turnRate            = 500,
		upright             = false,
		weapons                       = {
			{
				def                = [[GAUSS]],
				badTargetCategory  = [[FIXEDWING]],
				onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
			},
			{
				def                = [[GAUSS]],
				badTargetCategory  = [[FIXEDWING]],
				onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
			},
		},
		weaponDefs                    = {
			GAUSS = {
				name                    = [[Heavy Gauss Cannon]],
				alphaDecay              = 0.12,
				areaOfEffect            = 16,
				avoidfeature            = false,
				bouncerebound           = 0.35,
				bounceslip              = 1,
				cegTag                  = [[gauss_tag_l]],
				craterBoost             = 0,
				craterMult              = 0,
				customParams = {
					burst = Shared.BURST_RELIABLE,
				},
				damage                  = {
					default = 600.1,
				},
				explosionGenerator      = [[custom:gauss_hit_m]],
				groundbounce            = 1,
				impactOnly              = true,
				impulseBoost            = 2,
				impulseFactor           = 1.4,
				interceptedByShieldType = 1,
				noExplode               = true,
				noSelfDamage            = true,
				numbounce               = 4,
				range                   = 720,
				reloadtime              = 4.2,
				rgbColor                = [[0.5 1 1]],
				separation              = 0.5,
				size                    = 0.8,
				sizeDecay               = -0.1,
				soundHit                = [[weapon/gauss_hit]],
				soundHitVolume          = 3,
				soundStart              = [[weapon/cannon/grizzly_fire]],
				soundStartVolume        = 9,
				stages                  = 32,
				turret                  = true,
				waterweapon             = true,
				weaponType              = [[Cannon]],
				weaponVelocity          = 730,
			},
		},
		featureDefs         = {
			DEAD = {
				blocking         = true,
				featureDead      = [[HEAP]],
				footprintX       = 4,
				footprintZ       = 4,
				object           = [[amphassault_wreck.s3o]],
			},
			HEAP = {
				blocking         = false,
				footprintX       = 4,
				footprintZ       = 4,
				object           = [[debris4x4c.s3o]],
			},
		},
	} 
}
