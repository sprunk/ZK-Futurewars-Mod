return { 
	planelightscout = {
		unitname            = "planelightscout",
		name                = "Fenix",
		description         = "HiTech Fighter",
		brakerate           = 0.4,
		buildCostMetal      = 300,
		builder             = false,
		buildPic            = "planelightscout.png",
		canFly              = true,
		canGuard            = true,
		canMove             = true,
		canPatrol           = true,
		canSubmerge         = false,
		category            = "FIXEDWING",
		collide             = false,
		collisionVolumeOffsets = "0 0 0",
		collisionVolumeScales  = "14 14 45",
		collisionVolumeType    = "cylZ",
		corpse              = "DEAD",
		cruiseAlt           = 220,
		--canManualFire       = true,
		customParams        = {
			modelradius    = "8",
			refuelturnradius = "130",
			outline_x = 75,
			outline_y = 75,
			outline_yoff = 10,
			battery = 750,
			batteryrearmrate = 5,
			batterygain = 0, -- no passive battery regen. beamlaser_gold_muzzle
			initialbattery = 750,
			fighter_pullup_dist = 150,
		},
		explodeAs           = "GUNSHIPEX",
		floater             = true,
		footprintX          = 2,
		footprintZ          = 2,
		iconType            = "scoutplane",
		maxAcc              = 0.5,
		maxDamage           = 1100,
		maxAileron          = 0.016,
		maxElevator         = 0.022,
		maxRudder           = 0.012,
		maxVelocity         = 8,
		noAutoFire          = false,
		noChaseCategory     = "TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET",
		objectName          = "planelightscout.s3o",
		script              = "planelightscout.lua",
		selfDestructAs      = "GUNSHIPEX",
		sightDistance       = 950,
		turnRadius          = 50,
		sfxtypes				= {
			explosiongenerators		= {
				"custom:beamlaser_gold_muzzle",
			},
		},
		weapons             = {
			{
				def                = "LASER",
				mainDir			   = "0 0 1",
				maxAngleDif        = 90,
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER",
			},
			{
				def                = "LASER",
				mainDir			   = "0 0 1",
				maxAngleDif        = 90,
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER",
			},
			{
				def                = "LASER_DGUN",
				mainDir			   = "0 -1 0",
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER",
			},
			{
				def                = "SHIELD",
			},
		},
		weaponDefs          = {
			LASER = {
				name                    = "Burst Laser Cannon",
				areaOfEffect            = 15,
				accuracy				= 800,
				avoidFeature            = false,
				coreThickness           = 0.4,
				craterBoost             = 0,
				craterMult              = 0,
				beamTTL                 = 12,
				beamDecay               = 0.85,
				burst					= 4,
				burstRate				= 1/30,
				sprayangle				= 800,
				edgeeffectiveness		= 0.4,
				minIntensity            = 0.5,
				customParams        = {
					light_camera_height = 1800,
					light_radius = 80,
					light_color = "0.043 0.7 0.274",
					batterydrain = 10,
					mass = 110,
				},

				damage                  = {
					default = 7.1,
				},

				duration                = 0.1,
				explosionGenerator      = "custom:heavybeamyellowimpactsmall",
				fireStarter             = 50,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				range                   = 680,
				reloadtime              = 5/30,
				rgbColor                = "1 0.843 0",
				soundHit                = "weapon/laser/emerald_hit",
				soundStart              = "weapon/laser/sparrow_laser",
				soundStartVolume        = 0.2,
				soundTrigger            = true,
				thickness               = 2.25,
				tolerance               = 10000,
				turret                  = true,
				largebeamlaser			= true,
				texture1                = "lightlaser",
				beamDecay 				= 0.8,
				beamBurst				= true,
				beamTTL					= 13,
				turret                  = true,
				weaponType              = "LaserCannon",
				weaponVelocity          = 880,
			},
			SHIELD = {
				name                    = "Energy Shield",	
				customParams            = {
					unlinked  = true,
					shield_regenbatterycost = 5,
				},
				damage                  = {	
					default = 10,	
				},	
				exteriorShield          = true,	
				shieldAlpha             = 0.2,	
				shieldBadColor          = "1 0.1 0.1 1",	
				shieldGoodColor         = "0.1 0.1 1 1",	
				shieldInterceptType     = 3,	
				shieldPower             = 2000,	
				shieldPowerRegen        = 100,	
				shieldPowerRegenEnergy  = 0.001, -- needed so we trick shield gadget into checking battery levels.
				shieldRadius            = 120,
				shieldStartingPower     = 2000,
				shieldRepulser          = false,
				smartShield             = true,	
				visibleShield           = false,	
				visibleShieldRepulse    = false,	
				weaponType              = "Shield",	
			},
			LASER_DGUN = {
				name                    = "Lightning Discharge (Dgun)",
				accuracy                = 900,
				areaOfEffect            = 150,
				avoidFeature            = false,
				avoidFriendly           = false,
				beamTTL                 = 4,
				beamTime                = 3/30,
				cameraShake             = 80,
				canattackground         = true,
				coreThickness           = 1,
				craterBoost             = 0,
				craterMult              = 0,
				--commandfire             = true,
				customParams        = {
					extra_damage = 300,
					light_camera_height = 2000,
					light_color = "0.85 0.85 1.2",
					light_radius = 150,
					batterydrain = 10,
				},
				damage                  = {
					default        = 40.1,
				},
				explosionGenerator      = "custom:LIGHTNINGPLOSION_NOPOST",
				edgeeffectiveness       = 0.1,
				duration                = 10,
				fireStarter             = 50,
				impactOnly              = false,
				impulseBoost            = 0,
				impulseFactor           = 0,
				intensity               = 24,
				interceptedByShieldType = 1,
				paralyzeTime            = 3,
				range                   = 740,
				reloadtime              = 2.2,
				rgbColor                = "0 0.25 1",
				soundStart              = "weapon/more_lightning_fast",
				soundTrigger            = true,
				-- texture1                = "lightning",
				thickness               = 3.5,
				turret                  = true,
				waterweapon             = false,
				weaponType              = "LightningCannon",
				weaponVelocity          = 400,
			},
			LASER_ACTUAL = {
				name                    = "Lightning Discharge (Actual)", -- HAX for dgun.
				accuracy                = 900,
				areaOfEffect            = 150,
				avoidFeature            = false,
				avoidFriendly           = false,
				beamTTL                 = 4,
				beamTime                = 3/30,
				cameraShake             = 80,
				canattackground         = true,
				coreThickness           = 1,
				craterBoost             = 0,
				craterMult              = 0,
				--commandfire             = true,
				customParams        = {
					extra_damage = 220,
					light_camera_height = 2000,
					light_color = "0.85 0.85 1.2",
					light_radius = 150,
					batterydrain = 5,
				},
				damage                  = {
					default        = 60.1,
				},
				explosionGenerator      = "custom:LIGHTNINGPLOSION_NOPOST",
				duration                = 10,
				fireStarter             = 50,
				impactOnly              = false,
				impulseBoost            = 0,
				impulseFactor           = 0,
				intensity               = 24,
				interceptedByShieldType = 1,
				paralyzeTime            = 3,
				range                   = 740,
				reloadtime              = 2.2,
				size					= 0.01, -- hide it as best as we can.
				rgbColor                = "0 0.25 1",
				soundHit                = "weapon/more_lightning_fast",
				soundStart              = "weapon/more_lightning_fast",
				soundTrigger            = true,
				-- texture1                = "lightning",
				thickness               = 3.5,
				turret                  = true,
				waterweapon             = false,
				weaponType              = "Cannon",
				weaponVelocity          = 800,
			},
		},
		featureDefs         = {
			DEAD = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 2,
				footprintZ       = 2,
				object           = "planelightscout_dead.s3o",
			},
			HEAP = {
				blocking         = false,
				footprintX       = 2,
				footprintZ       = 2,
				object           = "debris2x2b.s3o",
			},
		},
	} 
}
