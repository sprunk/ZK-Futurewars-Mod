return { 
	bomberstrike = {
		unitname            = "bomberstrike",
		name                = "Heretic",
		description         = "ALCM Bomber (Anti-Structure)",
		brakerate           = 0.4,
		buildCostMetal      = 1000,
		builder             = false,
		buildPic            = "bomberstrike.png",
		canFly              = true,
		canGuard            = true,
		canMove             = true,
		canPatrol           = true,
		canSubmerge         = false,
		category            = "FIXEDWING",
		collide             = false,
		collisionVolumeOffsets = "0 0 0",
		collisionVolumeScales  = "80 10 30",
		collisionVolumeType    = "ellipsoid",
		corpse              = "DEAD",
		cruiseAlt           = 410,
		customParams        = {
			reallyabomber    = "1",
			fighter_pullup_dist = 3500, -- dont bother.
			reammoseconds    = "12",
			refuelturnradius = "150",
			requireammo      = "1",
			modelradius      = "10",
			bait_level_default = 1,
		},
		explodeAs           = "GUNSHIPEX",
		floater             = true,
		footprintX          = 3,
		footprintZ          = 3,
		iconType            = "bomberskirm",
		idleAutoHeal        = 5,
		idleTime            = 1800,
		maxAcc              = 0.5,
		maxAileron          = 0.02,
		maxDamage           = 2000,
		maxElevator         = 0.01,
		maxRudder           = 0.007,
		maxFuel             = 1000000,
		maxVelocity         = 6.5,
		noChaseCategory     = "TERRAFORM FIXEDWING SATELLITE GUNSHIP",
		objectName          = "bomberstrike.s3o",
		script              = "bomberstrike.lua",
		selfDestructAs      = "GUNSHIPEX",
		attackSafetyDistance = 701, -- try to bomb the target like a  bomber.
		sfxtypes            = {},
		sightDistance       = 840,
		turnRadius          = 420,
		weapons             = {
			{
				def                = "MISSILE",
				mainDir            = "0 0 1",
				maxAngleDif        = 145,
				onlyTargetCategory = "LAND TURRET SHIP SWIM FLOAT HOVER UNARMED",
			},
		},
		weaponDefs          = {
			MISSILE = {
				name                    = "Air Launched Cruise Missile",
				areaOfEffect            = 192,
				cegTag                  = "tactrail",
				avoidGround             = false,
				collideFriendly         = false,
				craterBoost             = 5,
				craterMult              = 3,
				customParams = {
					cruisealt = 500,
					cruisedist = 300,
					cruise_noascension = 1,
					cruise_minterrainheight = 120, -- only avoid terrain if the difference between the terrain and our altitude is below this.
				},
				damage                  = {
					default = 3500.1,
				},
				fireStarter             = 70,
				flightTime              = 8,
				impulseBoost            = 0.75,
				impulseFactor           = 0.3,
				interceptedByShieldType = 2,
				edgeEffectiveness       = 0.4,
				explosionGenerator      = "custom:NUKE_150",
				model                   = "wep_tacnuke.s3o",
				range                   = 1350,
				reloadtime              = 10,
				smokeTrail              = false,
				soundHit                = "explosion/mini_nuke",
				soundHitVolume          = 8,
				soundStart              = "weapon/missile/tacnuke_airlaunch",
				soundStartVolume        = 7,
				startVelocity           = 160,
				texture2                = "lightsmoketrail",
				tolerance               = 16000,
				tracks                  = true,
				turnRate                = 45000,
				weaponAcceleration      = 250,
				weaponType              = "MissileLauncher",
				weaponVelocity          = 800,
			},
		},
		featureDefs         = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 2,
				footprintZ       = 2,
				object           = "bomberstrike_dead.s3o",
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
