return { 
	chicken_pigeon = {
		unitname            = "chicken_pigeon",
		name                = "Pigeon",
		description         = "Biological Flying Pest",
		activateWhenBuilt   = true,
		acceleration        = 0.8,
		brakeRate           = 0.32,
		buildCostEnergy     = 0,
		buildCostMetal      = 0,
		builder             = false,
		buildPic            = "chicken_pigeon.png",
		buildTime           = 50,
		canFly              = true,
		canGuard            = true,
		canLand             = true,
		canMove             = true,
		canPatrol           = true,
		canSubmerge         = false,
		category            = "FIXEDWING",
		collide             = false,
		cruiseAlt           = 250,
		customParams        = {},
		explodeAs           = "NOWEAPON",
		floater             = true,
		footprintX          = 1,
		footprintZ          = 1,
		iconType            = "scoutplane",
		idleAutoHeal        = 30,
		idleTime            = 90,
		maxDamage           = 450,
		maxSlope            = 18,
		maxVelocity         = 14.3,
		noAutoFire          = false,
		noChaseCategory     = "TERRAFORM FIXEDWING GUNSHIP SATELLITE STUPIDTARGET",
		objectName          = "chicken_pigeon.s3o",
		power               = 50,
		reclaimable         = false,
		selfDestructAs      = "NOWEAPON",
		sfxtypes            = {
			explosiongenerators = {
				"custom:blood_spray",
				"custom:blood_explode",
				"custom:dirt",
			},
		},
		sightDistance       = 800,
		sonarDistance       = 800,
		turnRate            = 6000,
		weapons             = {
			{
				def                = "BOGUS_BOMB",
				onlyTargetCategory = "LAND SINK TURRET SHIP SWIM FLOAT HOVER",
			},
			{
				def                = "SPORES",
				mainDir            = "0 -1 0",
				maxAngleDif        = 120,
				onlyTargetCategory = "LAND SINK TURRET SHIP SWIM FLOAT HOVER",
			},
		},
		weaponDefs          = {
			BOGUS_BOMB = {
				name                    = "BogusBomb",
				areaOfEffect            = 80,
				burst                   = 1,
				burstrate               = 1,
				commandfire             = true,
				craterBoost             = 0,
				craterMult              = 0,

				customParams            = {
					bogus = 1,
				},

				damage                  = {
					default = 0,
				},

				edgeEffectiveness       = 0,
				explosionGenerator      = "custom:NONE",
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				model                   = "",
				myGravity               = 1000,
				noSelfDamage            = true,
				range                   = 10,
				reloadtime              = 2,
				weaponType              = "AircraftBomb",
			},
			SPORES     = {
				name                    = "Acidic Spit",
				areaOfEffect            = 96,
				avoidFriendly           = false,
				alphaDecay              = 0.8,
				burst                   = 8,
				burstRate               = 2/30,
				collideFriendly         = false,
				colorMap                = "0 0.952941 0.3843  0.08627 0.8509803 0.3960784   0.18039 0.70588 0.392156   0.1764705 0.52941 0.32156  0.12941 0.372549 0.22745  0.219607 0.549019 0.352941",
				craterBoost             = 0,
				craterMult              = 0,
				customParams            = {
					light_radius = 0,
				},
				damage                  = {
					default = 60.01,
				},
				dance                   = 60,
				explosionGenerator      = "custom:green_goo",
				fireStarter             = 0,
				fixedlauncher           = 1,
				impactOnly              = false,
				impulseBoost            = 0,
				impulseFactor           = 0,
				myGravity				= 1.2,
				interceptedByShieldType = 2,
				range                   = 10,
				reloadtime              = 4,
				smokeTrail              = true,
				startVelocity           = 100,
				size                    = 8,
				stages                  = 10,
				seperation				= 3,
				soundHit                = "chickens/acid_hit",
				soundStart              = "weapon/chickens/small_attack",
				texture1                = "",
				texture2                = "sporetrail",
				tolerance               = 32000,
				turret                  = true,
				waterWeapon             = true,
				weaponAcceleration      = 100,
				weaponType              = "AircraftBomb",
			},
		},
	}
}
