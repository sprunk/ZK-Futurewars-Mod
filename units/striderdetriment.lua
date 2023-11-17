return { 
	striderdetriment = {
		unitname               = "striderdetriment",
		name                   = "Titan",
		description            = "Ultimate Assault Strider",
		acceleration           = 0.328,
		activateWhenBuilt      = true,
		brakeRate              = 1.435,
		buildCostMetal         = 30000,
		builder                = false,
		buildPic               = "striderdetriment.png",
		canGuard               = true,
		--canManualFire          = true,
		canMove                = true,
		canPatrol              = true,
		category               = "LAND",
		collisionVolumeOffsets = "0 14 0",
		collisionVolumeScales  = "92 158 92",
		collisionVolumeType    = "cylY",
		corpse                 = "DEAD",
		customParams           = {
			modelradius    = "95",
			extradrawrange = 925,
			nanoregen = 30,
			nano_maxregen = 30,
			outline_x = 230,
			outline_y = 230,
			outline_yoff = 70,
			singuimmune = 1,
			reveal_losunit = "los_superwep",
			reveal_onprogress = 0.9,
			reveal_onfinish = false,
		},
		explodeAs              = "NUCLEAR_MISSILE",
		footprintX             = 6,
		footprintZ             = 6,
		iconType               = "krogoth",
		leaveTracks            = true,
		losEmitHeight          = 100,
		health                 = 250000,
		maxSlope               = 37,
		speed                  = 42,
		maxWaterDepth          = 5000,
		movementClass          = "AKBOT4",
		noAutoFire             = false,
		noChaseCategory        = "TERRAFORM SATELLITE SUB",
		objectName             = "detriment.s3o",
		script                 = "striderdetriment.lua",
		selfDestructAs         = "NUCLEAR_MISSILE",
		selfDestructCountdown  = 10,
		sightDistance          = 2000,
		trackOffset            = 0,
		trackStrength          = 8,
		trackStretch           = 0.8,
		trackType              = "ComTrack",
		trackWidth             = 60,
		turnRate               = 482,
		upright                = true,
		weapons                = {
			{
				def                = "GAUSS",
				onlyTargetCategory = "LAND SINK TURRET SUB SHIP SWIM FLOAT HOVER GUNSHIP",
			},
			{
				def                = "FLAK",
				badTargetCategory  = "FIXEDWING",
				onlyTargetCategory = "FIXEDWING GUNSHIP",
			},
			{
				def                = "TRILASER",
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER",
			},

		},
		weaponDefs             = {
			SECONDARY = {
				name                    = "Antimatter Pellet",
				areaOfEffect            = 108,
				craterBoost             = 5,
				craterMult              = 4,
				burnblow				= true,
				customParams            = {
					burst = Shared.BURST_RELIABLE,
					gatherradius     = "240",
					smoothradius     = "120",
					smoothmult       = "0.2",
					smoothexponent = "0.75",
					movestructures   = "1",
					force_ignore_ground = "1",
					light_color = "3 2.33 1.5",
					light_radius = 150,
					isFlak = 3,
					flaktime = -1/30,
				},
				damage                  = {
					default = 1020.1,
					armorpiercing = 0.2,
				},
				edgeEffectiveness = 0.4,
				explosionGenerator      = "custom:TESS",
				impulseBoost            = 0,
				impulseFactor           = 2,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				range                   = 450,
				reloadtime              = 3,
				soundHit                = "explosion/ex_large9",
				--soundStart              = "weapon/cannon/rhino",
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 470,
				waterWeapon 			= true,
			},
			GAUSS         = {
				name                    = "Decimator Cannon Barrage",
				alphaDecay              = 0.12,
				areaOfEffect            = 216,
				avoidfeature            = false,
				burst                   = 6,
				burstrate               = 1,
				cegTag                  = "vulcanfx",
				craterBoost             = 5,
				craterMult              = 4,
				customParams = {
					reaim_time = 1,
					gatherradius     = "300",
					smoothradius     = "150",
					smoothmult       = "0.8",
					smoothexponent = "0.75",
					movestructures   = "1",
					force_ignore_ground = "1",
					muzzleEffectFire = "custom:RAIDMUZZLE",
					numprojectiles1 = 7,
					projectile1 = "striderdetriment_secondary",
					proxy = 1, 
					proxydist = 200,
					spawndist = 200,
					velspread1 = "7.64, 3.5, 7.64",
					armorpiercing = 0.2,
					not_artillery = "hack for rafflesia",
				},
				damage                  = {
					default = 1020.1*7,
				},
				explosionGenerator      = "custom:100rlexplode",
				groundbounce            = 1,
				impactOnly              = true,
				impulseBoost            = 0,
				impulseFactor           = 5,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				range                   = 1600,
				reloadtime              = 5.833,
				separation              = 0.5,
				size                    = 0.8,
				sizeDecay               = -0.1,
				soundHit                = "weapon/cannon/outlaw_gun",
				soundStart              = "weapon/cannon/cannon_fire9",
				sprayangle              = 800,
				stages                  = 32,
				tolerance               = 4096,
				turret                  = true,
				waterweapon             = true,
				weaponType              = "Cannon",
				weaponVelocity          = 900,
			},
			FLAK = {
				name                    = "Flak Canister",
				areaOfEffect            = 0,
				burnblow                = true,
				canattackground         = false,
				--cegTag                  = "vulcanfx",
				craterBoost             = 0,
				craterMult              = 0,
				cylinderTargeting       = 1,
				customParams        	  = {
					reaim_time = 8, -- COB
					isaa = "1",
					light_radius = 0,
					numprojectiles1 = 5,
					projectile1 = "striderdetriment_tritary",
					spawndist = 200,
					velspread1 = "5.09, 3, 5.09",
					proxy = 1, 
					proxydist = 300,
					damage_vs_shield = "180"
				},
				damage  = {
					default = 120.1*5,
				},
				--interceptor = 2,
				edgeEffectiveness       = 0.25,
				explosionGenerator      = "custom:EMG_HIT_HE",
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				range                   = 800,
				reloadtime              = 1/6,
				myGravity				= 0.03,
				size                    = 8,
				soundHit                = "weapon/cannon/cannon_fire4",
				soundHitVolume	        = 0.5,
				soundStart              = "weapon/cannon/cannon_fire9",
				soundStartVolume	= 1,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 600,
				--coverage = 2200,
			},
			TRITARY = {
				name                    = "Flechette",
				cegTag                  = "flak_trail",
				areaOfEffect            = 128,
				coreThickness           = 0.5,
				craterBoost             = 0,
				craterMult              = 0,
				customParams            = {
					light_camera_height = 2000,
					light_color = "1 0.2 0.2",
					isaa = "1",
					light_radius = 0,
					isFlak = 3,
					flaktime = -4,
				},
				damage = {
					default = 120.1,
				},
				--interceptor = 2,
				edgeEffectiveness       = 0.3,
				duration                = 0.02,
				explosionGenerator      = "custom:flakplosion",
				fireStarter             = 50,
				heightMod               = 1,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 1,
				range                   = 300,
				reloadtime              = 0.8,
				rgbColor                = "0.2 0.2 0.2",
				soundHit                = "weapon/flak_hit2",
				soundHitVolume	      = 0.4,
				--soundTrigger            = true,
				sprayangle              = 1500,
				size = 3,
				thickness               = 2,
				tolerance               = 10000,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 880,
				--coverage = 1000,
			},
			TRILASER = {
				name                    = "Terawatt Laser",
				areaOfEffect            = 36,
				beamTime                = 1,
				beamttl                 = 3,
				coreThickness           = 0.5,
				craterBoost             = 0,
				craterMult              = 0,
				edgeEffectiveness       = 0.3,

				customParams            = {
					light_color = "0.2 0.8 0.2",
					reaim_time = 1,
				},
				damage                  = {
					default = 16000.1,
					armorpiercing = 0.35,
				},
				explosionGenerator      = "custom:beamlaser_hit_saphire",
				fireStarter             = 90,
				fireTolerance           = 4200, -- about 50 degrees
				impactOnly              = false,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 1,
				largeBeamLaser          = true,
				laserFlareSize          = 16.4,
				leadLimit               = 18,
				minIntensity            = 1,
				noSelfDamage            = true,
				range                   = 1200,
				reloadtime              = 6.5,
				rgbColor                = "0.0588 0.3215 0.7294",
				rgbColor2               = "0.3215 0.54509 0.898",
				scrollSpeed             = 5,
				soundStart              = "weapon/laser/gigalaser_fire",
				soundStartVolume        = 10,
				sweepfire               = false,
				texture1                = "ecmnoise",
				texture2                = "flare",
				texture3                = "flare",
				texture4                = "smallflare",
				thickness               = 14,
				tileLength              = 300,
				tolerance               = 4200, -- about 50 degrees
				turret                  = true,
				weaponType              = "BeamLaser",
				weaponVelocity          = 2250,
			},
		},
		featureDefs            = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 6,
				footprintZ       = 6,
				object           = "Detriment_wreck.s3o",
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 4,
				footprintZ       = 4,
				object           = "debris4x4b.s3o",
			},
		},
	} 
}
