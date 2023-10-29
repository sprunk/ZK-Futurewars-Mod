return { 
	turretaafar = {
		unitname                      = "turretaafar",
		name                          = "Hailstorm",
		description                   = "Heavy SAM Battery (Requires 80 energy grid)",
		buildCostMetal                = 1500,
		builder                       = false,
		buildingGroundDecalDecaySpeed = 30,
		buildingGroundDecalSizeX      = 3.6,
		buildingGroundDecalSizeY      = 3.6,
		buildingGroundDecalType       = "turretaafar_aoplane.dds",
		buildPic                      = "turretaafar.png",
		category                      = "FLOAT",
		collisionVolumeOffsets        = "0 12 0",
		collisionVolumeScales         = "58 76 58",
		collisionVolumeType            = "CylY",
		corpse                        = "DEAD",
		customParams                  = {
			aimposoffset   = "0 10 0",
			modelradius    = "19",
			neededlink  = 80,
			pylonrange  = 150,
			keeptooltip = "by janitor's request, please don't remove the tooltips Machine God.",
			bait_level_default = 1,
			dontfireatradarcommand = '0',
		},
		explodeAs                     = "LARGE_BUILDINGEX",
		floater                       = true,
		footprintX                    = 4,
		footprintZ                    = 4,
		iconType                      = "staticskirmaa",
		idleAutoHeal                  = 5,
		idleTime                      = 1800,
		losEmitHeight                 = 40,
		health                        = 6500,
		maxSlope                      = 18,
		maxWaterDepth                 = 5000,
		minCloakDistance              = 150,
		noAutoFire                    = false,
		noChaseCategory               = "FIXEDWING LAND SINK TURRET SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER",
		objectName                    = "armcir.s3o",
		script                        = "turretaafar.lua",
		selfDestructAs                = "LARGE_BUILDINGEX",
		sightDistance                 = 1600,
		radarDistance			      = 3000,
		useBuildingGroundDecal        = true,
		yardMap                       = "oooooooooooooooo",
		sfxtypes            = {
			explosiongenerators = {
				"custom:STORMMUZZLE",
				"custom:light_red_short",
				"custom:light_green_short",
				"custom:light_blue_short",
			},
		},
		weapons                       = {
			{
				def                = "MISSILE",
				--badTargetCategory  = "GUNSHIP",
				onlyTargetCategory = "FIXEDWING GUNSHIP",
			},
		},
		weaponDefs                    = {
			MISSILE = {
				name                    = "Rapid Fire SAM",
				areaOfEffect            = 24,
				canattackground         = false,
				cegTag                  = "chainsawtrail",
				craterBoost             = 0,
				craterMult              = 0,
				cylinderTargeting       = 1,
				cameraShake				= 0,
				customParams              = {
					isaa = "1",
					light_color = "0.6 0.7 0.7",
					light_radius = 420,
					script_reload = "14",
					script_burst = "28",
				},
				damage                  = {
					default = 250.1,
				},
				explosionGenerator      = "custom:MISSILE_HIT_PIKES_160",
				fireStarter             = 20,
				flightTime              = 4,
				impactOnly              = true,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 2,
				model                   = "wep_m_phoenix.s3o",
				noSelfDamage            = true,
				range                   = 2400,
				reloadtime              = 0.1,
				smokeTrail              = true,
				soundHit                = "weapon/missile/med_aa_hit",
				soundStart              = "weapon/missile/med_aa_fire",
				soundTrigger            = true,
				startVelocity           = 550,
				texture2                = "AAsmoketrail",
				tolerance               = 16000,
				tracks                  = true,
				turnRate                = 55000,
				turret                  = true,
				waterweapon             = true,
				weaponAcceleration      = 550,
				weaponType              = "MissileLauncher",
				weaponVelocity          = 800,
			},
		},
		featureDefs                   = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 4,
				footprintZ       = 4,
				object           = "chainsaw_d.dae",
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
