return {
	energyheavygeo = {
		unitname                      = "energyheavygeo",
		name                          = "Advanced Geothermal",
		description                   = "Large Powerplant (+150) - Increases slowly over time, EXTREMELY HAZARDOUS",
		activateWhenBuilt             = true,
		buildCostMetal                = 1500,
		builder                       = false,
		buildingGroundDecalDecaySpeed = 30,
		buildingGroundDecalSizeX      = 9,
		buildingGroundDecalSizeY      = 9,
		buildingGroundDecalType       = "energyheavygeo_aoplane.dds",
		buildPic                      = "energyheavygeo.png",
		category                      = "SINK UNARMED",
		corpse                        = "DEAD",
		customParams                  = {
			pylonrange     = 150,
			removewait     = 1,
			removestop     = 1,
			decay_time     = 2,
			decay_maxoutput= 1.5,
			decay_initialrate = 0.1,
			decay_rate     = -0.01,
			stats_show_death_explosion = true,
			isgeo = 1,
		},
		energyMake                    = 400, --ik the AI doesn't build geos, but when they do, hopefully they builds lots!
		energyUse                     = 0,
		explodeAs                     = "YELLOWSTONE",
		footprintX                    = 5,
		footprintZ                    = 5,
		iconType                      = "energyheavygeo",
		idleAutoHeal                  = 5,
		idleTime                      = 1800,
		health                        = 6500,
		maxSlope                      = 255,
		objectName                    = "energyheavygeo.s3o",
		script                        = "energyheavygeo.lua",
		selfDestructAs                = "YELLOWSTONE",
		sightDistance                 = 225,
		useBuildingGroundDecal        = true,
		yardMap                       = "ooooo ogggo ogggo ogggo ooooo",
		weaponDefs            = {
			YELLOWSTONE = {
				name                    = "Supervolcanic Eruption (Death Explosion)",
				areaOfEffect            = 1280,
				craterBoost             = 0,
				craterMult              = 0,
				customParams        = {
					setunitsonfire = "1",
					burntime = 1980,
					numprojectiles1 = 90,
					projectile1 = "energyheavygeo_napalm_fragment_dummy",
					velspread1 = "3, 5, 3, _, 12, _",
					noairburst = "this is required for safety's sake",
					onexplode = "Sattuu ihan vitusti",
					timeddeploy = -1,
					stats_damage = 9500,
					stats_hide_dps = true,
					stats_hide_reload = true,
					stats_hide_range = true,
				},
				damage                  = {
					default = 9500,
				},
				explosionGenerator      = "custom:NUKE_600",
				firestarter             = 400,
				impulseBoost            = 0.5,
				impulseFactor           = 0.2,
				soundHit                = "explosion/mohoexplode",
				soundHitVolume          = 10000,
			},
			NAPALM_FRAGMENT_DUMMY = {
				name                    = "Volcanic Superbomb", --https://en.wikipedia.org/wiki/Volcanic_bomb but on steroids
				accuracy                = 400,
				alwaysVisible           = true,
				areaOfEffect            = 350,
				avoidFeature            = false,
				craterBoost             = 1,
				craterMult              = 2,
				collideFeature          = false,
				cegTag                  = "meteor_trail",
				customParams              = {
					projectile1 = "energyheavygeo_napalm_fragment",
					noairburst = "I belive I can fly...",
					timeddeploy = 125,

					--lups_heat_fx = "firewalker",
					light_camera_height = 2500,
					light_color = "0.25 0.13 0.05",
					light_radius = 500,
					shield_damage = 40,
					bogus = 1,
				},
				damage                  = {
					default = 0,
				},
				firestarter             = 180,
				impactOnly              = true,
				impulseBoost            = 0,
				impulseFactor           = 0.42,
				interceptedByShieldType = 1,
				myGravity               = 0.04,
				noExplode               = true,
				noSelfDamage            = true,
				range                   = 100000,
				reloadtime              = 12,
				rgbColor                = "1 0.5 0.2",
				size                    = 24,
				soundHit                = "nosound",
				soundStart              = "nosound",
				soundStartVolume        = 3.2,
				sprayangle              = 2500,
				turret                  = true,
				waterweapon             = true,
				weaponType              = "Cannon",
				weaponVelocity          = 320,
			},
			NAPALM_FRAGMENT = {
				name                    = "Volcanic Superbomb", --https://en.wikipedia.org/wiki/Volcanic_bomb but on steroids
				accuracy                = 400,
				alwaysVisible           = true,
				areaOfEffect            = 350,
				avoidFeature            = false,
				craterBoost             = 1,
				craterMult              = 2,
				cegTag                  = "meteor_trail",
				customParams              = {
					setunitsonfire = "1",
					burntime = 900,

					numprojectiles1 = 8, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "energyheavygeo_napalm_fragment_fragment",
					posspread1 = "0, 10, 0, 0, 20, 0",
					posspreadmode1 = "box",
					velspread1 = "2.5, 3, 2.5, _, 7, _",
					noairburst = "I belive I can fly...",
					onexplode = "by the power of god, disco and hentai...",

					--lups_heat_fx = "firewalker",
					light_camera_height = 2500,
					light_color = "0.25 0.13 0.05",
					light_radius = 500,
				},
				damage                  = {
					default = 3300,
				},
				explosionGenerator      = "custom:smr_big",
				edgeEffectiveness       = 0.5,
				firestarter             = 180,
				impulseBoost            = 0,
				impulseFactor           = 0.42,
				interceptedByShieldType = 1,
				myGravity               = 0.04,
				range                   = 900,
				reloadtime              = 12,
				rgbColor                = "1 0.5 0.2",
				size                    = 24,
				soundHit                = "weapon/cannon/supergun_bass_boost", --it's effectively an asteroid, so why not use the asteroid sounds?
				soundStart              = "nosound",
				soundStartVolume        = 3.2,
				sprayangle              = 2500,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 320,
			},
			NAPALM_FRAGMENT_FRAGMENT = {
				name                    = "Magma Fireball",
				accuracy                = 400,
				alwaysVisible           = true,
				areaOfEffect            = 162,
				avoidFeature            = false,
				craterBoost             = 1,
				craterMult              = 2,
				cegTag                  = "flamer",
				customParams            = {
					--lups_heat_fx = "firewalker",
					light_camera_height = 2500,
					light_color = "0.25 0.13 0.05",
					light_radius = 500,
				},
				damage                  = {
					default = 1020,
				},
				edgeEffectiveness       = 0.5,
				explosionGenerator      = "custom:smr",
				firestarter             = 180,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 1,
				myGravity               = 0.05,
				range                   = 900,
				reloadtime              = 12,
				rgbColor                = "1 0.5 0.2",
				size                    = 10,
				soundHit                = "explosion/ex_med17",
				soundStart              = "nosound",
				soundStartVolume        = 3.2,
				sprayangle              = 2500,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 320,
			},
		},
		featureDefs                   = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 5,
				footprintZ       = 5,
				object           = "energyheavygeo_dead.s3o",
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 5,
				footprintZ       = 5,
				object           = "debris4x4a.s3o",
			},
		},
	}
}
