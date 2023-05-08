return { 
	droneassault = {
		unitname            = "droneassault",
		name                = "Python",
		description         = "Assault Drone",
		acceleration        = 0.15,
		airHoverFactor      = 4,
		brakeRate           = 0.24,
		buildCostMetal      = 75,
		builder             = false,
		buildPic            = "droneassault.png",
		canBeAssisted       = false,
		canFly              = true,
		canGuard            = true,
		canMove             = true,
		canPatrol           = true,
		canSubmerge         = false,
		category            = "GUNSHIP DRONE",
		collide             = false,
		cruiseAlt           = 130,
		explodeAs           = "TINY_BUILDINGEX",
		floater             = true,
		footprintX          = 2,
		footprintZ          = 2,
		hoverAttack         = true,
		iconType            = "fighter",
		idleAutoHeal        = 20,
		idleTime            = 150,
		maxDamage           = 1500,
		maxVelocity         = 4.5,
		noAutoFire          = false,
		noChaseCategory     = "TERRAFORM SATELLITE SUB",
		objectName          = "assaultdrone.dae",
		reclaimable         = false,
		repairable          = false, -- mostly not to waste constructor attention on area-repair; has regen anyway
		refuelTime          = 10,
		script              = "droneassault.lua",
		selfDestructAs      = "TINY_BUILDINGEX",
		customParams        = {
			bait_level_target      = 1,
			is_drone = 1,
		},
		sfxtypes            = {
			explosiongenerators = {},
		},
		sightDistance       = 600,
		turnRate            = 792,
		upright             = true,
		weapons             = {
			{
				def                = "CANNON",
				badTargetCategory  = "FIXEDWING",
				mainDir            = "0 0 1",
				maxAngleDif        = 90,
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER",
			},
		},
		weaponDefs          = {
			CANNON      = {
				name                    = "Gluon Accelerator",
				areaOfEffect            = 32,
				avoidFeature            = true,
				avoidFriendly           = true,
				colorMap				= [[0.329 0.78 0.8196 0.01 0.251 0.608 0.639 0.01  0.08 0.235 0.251 0.01]],
				cegtag                  = "gluon_tiny",
				customParams            = {
					armorpiercing = 0.25,
				},
				damage                  = {
					default = 300.1,
				},
				explosionGenerator      = "custom:FLASH64",
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				range                   = 310,
				reloadtime              = 2,
				sizeDecay				= -0.2,
				size                    = 10,
				seperation				= 0.1,
				nogap					= true,
				stages					= 15,
				soundHit                = "weapon/cannon/generic_cannon",
				soundStart              = "weapon/cannon/cannonfire_viper",
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 650,
			},
		},
	} 
}
