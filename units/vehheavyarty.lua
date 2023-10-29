return { 
	vehheavyarty = {
		unitname            = "vehheavyarty",
		name                = "Impaler",
		description         = "Tactical Bombardment Artillery",
		acceleration        = 0.252,
		brakeRate           = 0.96,
		buildCostMetal      = 1100,
		builder             = false,
		buildPic            = "vehheavyarty.png",
		canMove             = true,
		category            = "LAND",
		collisionVolumeOffsets = "0 0 0",
		collisionVolumeScales  = "40 20 40",
		collisionVolumeType    = "box",
		corpse              = "DEAD",
		customParams        = {
			dontfireatradarcommand = '0',
			bait_level_default = 2,
		},
		explodeAs           = "BIG_UNITEX_MERL",
		footprintX          = 3,
		footprintZ          = 3,
		iconType            = "vehiclelrarty",
		idleAutoHeal        = 5,
		idleTime            = 1800,
		leaveTracks         = true,
		health              = 2200,
		maxSlope            = 18,
		speed               = 1.6,
		movementClass       = "TANK3",
		noChaseCategory     = "TERRAFORM FIXEDWING GUNSHIP",
		objectName          = "core_diplomat.s3o",
		script              = "vehheavyarty.lua",
		selfDestructAs      = "BIG_UNITEX_MERL",
		sfxtypes            = {
			explosiongenerators = {
				"custom:SLAM_MUZZLE",
			},
		},
		sightDistance       = 660,
		trackOffset         = 15,
		trackStrength       = 8,
		trackStretch        = 1,
		trackType           = "StdTank",
		trackWidth          = 44,
		turninplace         = 0,
		turnRate            = 336,
		weapons             = {
			{
				def                = "CORTRUCK_ROCKET",
				badTargetCategory  = "SWIM LAND SHIP HOVER",
				onlyTargetCategory = "SWIM LAND SINK TURRET FLOAT SHIP HOVER",
			},
		},
		weaponDefs          = {
			CORTRUCK_ROCKET = {
				name                    = "Eos Tactical Cruise Missile",
				areaOfEffect            = 160,
				avoidground             = false,
				cegTag                  = "slam_trail",
				collideFriendly         = false,
				craterBoost             = 1,
				craterMult              = 2,
				customParams        = {
					burst = Shared.BURST_RELIABLE,
					reaim_time = 15, -- Some script bug. It does not need fast aim updates anyway.
					light_camera_height = 2500,
					light_color = "1 0.8 0.2",
					cruisealt = 200,
					cruisedist = 140,
					reveal_unit = 40,
				},
				damage         = {
					default = 3500.1,
				},
				texture1="null", --flare, reference: http://springrts.com/wiki/Weapon_Variables#Texture_Tags
				--texture2="null", --smoketrail
				--texture3="null", --flame
				edgeEffectiveness       = 0.25,
				explosionGenerator      = "custom:slam",
				fireStarter             = 100,
				flightTime              = 20,
				impactOnly              = false,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 2,
				model                   = "wep_merl.s3o",
				noSelfDamage            = true,
				range                   = 1900,
				reloadtime              = 21,
				smokeTrail              = false,
				soundHit                = "explosion/mini_nuke_2",
				soundStart              = "weapon/missile/heavy_missile_launch1",
				tolerance               = 4000,
				turnrate                = 56500,
				startVelocity           = 80,
				weaponAcceleration      = 315,
				tracks                  = true, -- doesn't actually track. Needed for cruise missile.
				weaponType              = "StarburstLauncher",
				weaponVelocity          = 500,
			},
		},
		featureDefs         = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 3,
				footprintZ       = 3,
				object           = "core_diplomat_dead.s3o",
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 3,
				footprintZ       = 3,
				object           = "debris3x3c.s3o",
			},
		},
	} 
}
