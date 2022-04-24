return { 
	wolverine_mine = {
		unitname               = [[wolverine_mine_buildable]],
		name                   = [[Disbander]],
		description            = [[Buildable Landmine]],
		acceleration           = 0.00001,
		activateWhenBuilt      = true,
		brakeRate              = 1.5,
		buildCostMetal         = 45,
		builder                = false,
		buildPic               = [[wolverine_mine.png]],
		canGuard               = false,
		canMove                = true,
		canPatrol              = false,
		category               = [[FLOAT MINE STUPIDTARGET]],
		cloakCost              = 0,
		collisionVolumeOffsets = [[0 -4 0]],
		collisionVolumeScales  = [[20 20 20]],
		collisionVolumeType    = [[ellipsoid]],
		cantBeTransported = true,
		customParams           = {
			notselectable = [[1]],
			massoverride = 80,
		},
		explodeAs              = [[wolverine_mine_bomb]],
		footprintX             = 1,
		footprintZ             = 1,
		iconType               = [[mine]],
		idleAutoHeal           = 10,
		idleTime               = 300,
		initCloaked            = true,
		maxDamage              = 40,
		maxSlope               = 255,
		maxVelocity            = 0.001,
		movementClass          = [[AKBOT2]],
		minCloakDistance       = 50,
		noAutoFire             = false,
		noChaseCategory        = [[FIXEDWING LAND SINK TURRET SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER]],
		objectName             = [[claw.s3o]],
		onoffable              = false,
		reclaimable            = false,
		repairable             = false,
		script                 = [[wolverine_mine.lua]],
		selfDestructAs         = [[wolverine_mine_bomb]],
		selfDestructCountdown  = 0,
		sightDistance          = 85,
		stealth                = true,
		turnRate               = 0.001,
		waterline              = 1,
		workerTime             = 0,
		blocking			   = false,
		weapons                = {
			{
				def                = [[BOMB]],
				onlyTargetCategory = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
			},
		},
		cloakTimeout = 1,
		weaponDefs             = {
			BOMB = {
				name                    = [[Mine Explosion]],
				accuracy                = 0,
				areaOfEffect            = 80,
				avoidFeature            = false,
				avoidGround             = true,
				craterBoost             = 0,
				craterMult              = 0,
				edgeEffectiveness       = 0.1,
				customParams            = {
					restrict_in_widgets = 1,
					-- light_color = [[3 2.33 1.5]], Not quite sure which ones are intentionally supposed to be here.
					-- light_radius = 150,			 Usually the last index is whats set at runtime, so i'll just leave it as commented out for future reference?
					light_camera_height = 3500,
					light_color = [[0.75 0.4 0.15]],
					light_radius = 100,
					numprojectiles1 = 6, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "wolverine_mine_fragment_dummy",
					--spreadradius = 8, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					keepmomentum1 = 0,
					timeoutspawn = 0,
					vradius1 = "-2.5,-1.5,-2.5,2.5,-0.5,2.5",
					noairburst = "March of progress", -- if true, this projectile will skip all airburst checks
					onexplode = "The unity prevails", -- if true, this projectile will cluster when it explodes
					spawndist = 69420, -- at what distance should we spawn the projectile(s)? REQUIRED.
					stats_damage = 900.06,
					shield_damage = 900.06,
					stats_shield_damage = 900.06,
					stats_hide_dps = 1, -- one use
					stats_hide_reload = 1,
					blastwave_size = 20,
					blastwave_impulse = 1,
					blastwave_speed = 10,
					blastwave_life = 6,
					blastwave_lossfactor = 0.9,
					blastwave_damage = 20,
					nofriendlyfire = "needs hax",
				},

				damage                  = {
					default = 0,
				},
				model                   = [[claw.s3o]],
				explosionGenerator      = [[custom:DOT_Pillager_Explo]],
				fireTolerance           = 1820, -- 10 degrees
				impulseBoost            = 0.5,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				range                   = 80,
				reloadtime              = 6,
				rgbColor                = [[0.2 0.2 0.2]],
				soundHit                = [[explosion/ex_med6]],
				--soundStart              = [[explosion/ex_large5]],
				size                    = 8,
				turret                  = true,
				weaponType              = [[Cannon]],
				weaponVelocity          = 880,
			},
			FRAGMENT_DUMMY = {
				name                    = [[merkityksetön räjähdys]], -- nobody should read this anyways?
				accuracy                = 400,
				areaOfEffect            = 162,
				avoidFeature            = false,
				craterBoost             = 1,
				craterMult              = 2,
				customParams              = {
					numprojectiles1 = 1, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "wolverine_mine_bomblet",
					--spreadradius = 8, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "derpderpderpderpderpderpderpderpderpderp", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					keepmomentum1 = 1,
					timeoutspawn = 0,
					noairburst = "I belive I can fly...", -- if true, this projectile will skip all airburst checks
					spawndist = 69420, -- at what distance should we spawn the projectile(s)? REQUIRED.
					timeddeploy = 20,
					shield_damage = 100,
					bogus = 1,
					light_color = [[0.75 0.4 0.15]],
					light_radius = 100,
				},
				damage                  = {
					default = 0,
				},

				firestarter             = 180,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				myGravity               = 0.1,
				noExplode               = true,
				model                   = [[wep_b_fabby.s3o]],
				projectiles             = 10,
				range                   = 900,
				reloadtime              = 12,
				rgbColor                = [[1 0.5 0.2]],
				size                    = 5,
				soundHit                = [[nosound]],
				soundStart              = [[weapon/cannon/wolverine_fire]],
				soundStartVolume        = 3.2,
				sprayangle              = 2500,
				turret                  = true,
				weaponType              = [[Cannon]],
				weaponVelocity          = 320,
				waterWeapon             = true,
			},

			BOMBLET = {
				name                    = [[Bomblet]],
				areaOfEffect            = 80,
				avoidFriendly			= false,
				collideFriendly			= false,
				craterBoost             = 0,
				craterMult              = 0,
				customparams = {
					nofriendlyfire = "needs hax",
					stats_hide_dps = 1, -- one use
					stats_hide_reload = 1,
					light_color = [[0.75 0.4 0.15]],
					light_radius = 100,
				},

				damage                  = {
					default = 150.01,
				},

				edgeEffectiveness		= 1/3,
				explosionGenerator      = [[custom:mineboom]],
				fireStarter             = 70,
				impactOnly              = false,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 1,
				model                   = [[wep_b_fabby.s3o]],
				range                   = 300,
				smokeTrail              = true,
				soundHit                = [[explosion/ex_med5]],
				soundHitVolume          = 5,
				--soundStart              = [[weapon/missile/sabot_fire_short]],
				--soundStartVolume        = 9,
				--soundTrigger            = 1,
				weaponAcceleration      = 200,
				weaponType              = [[Cannon]],
				weaponVelocity          = 300,
			},
		},
	} 
}
