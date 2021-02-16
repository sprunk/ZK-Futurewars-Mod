return { 
	staticradar = {
		unitname                      = [[staticradar]],
		name                          = [[Radar Tower]],
		description                   = [[Early Warning System]],
		acceleration                  = 0,
		activateWhenBuilt             = true,
		brakeRate                     = 0,
		buildCostMetal                = 50,
		builder                       = false,
		buildingGroundDecalDecaySpeed = 30,
		buildingGroundDecalSizeX      = 4,
		buildingGroundDecalSizeY      = 4,
		buildingGroundDecalType       = [[staticradar_aoplane.dds]],
		buildPic                      = [[staticradar.png]],
		canMove                       = false,
		category                      = [[FLOAT UNARMED]],
		collisionVolumeOffsets        = [[0 -32 0]],
		collisionVolumeScales         = [[32 90 32]],
		collisionVolumeType           = [[CylY]],
		corpse                        = [[DEAD]],
		
		customParams = {
			morphto        = [[staticheavyradar]],
			morphtime      = 30,
			modelradius    = [[16]],
			priority_misc  = 2, -- High
			isradar        = 1,
			removewait     = 1,
			removestop     = 1,
		},
  
		energyUse                     = 0.5,
		explodeAs                     = [[SMALL_BUILDINGEX]],
		floater                       = true,
		footprintX                    = 2,
		footprintZ                    = 2,
		iconType                      = [[radar]],
		idleAutoHeal                  = 5,
		idleTime                      = 1800,
		levelGround                   = false,
		maxDamage                     = 200,
		maxSlope                      = 36,
		maxVelocity                   = 0,
		minCloakDistance              = 150,
		noAutoFire                    = false,
		objectName                    = [[ARADARLVL1.s3o]],
		script                        = [[staticradar.lua]],
		onoffable                     = true,
		radarDistance                 = 2100,
		radarEmitHeight               = 32,
		selfDestructAs                = [[SMALL_BUILDINGEX]],
		sightDistance                 = 600,
		sonarDistance       		  = 600,
		turnRate                      = 0,
		useBuildingGroundDecal        = true,
		workerTime                    = 0,
		yardMap                       = [[oooo]],
  
		sfxtypes               = {

			explosiongenerators = {
				[[custom:scanner_ping]]
			},

		},
		featureDefs                   = {
			DEAD  = {
				blocking         = true,
				featureDead      = [[HEAP]],
				footprintX       = 2,
				footprintZ       = 2,
				object           = [[ARADARLVL1_dead.s3o]],
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 2,
				footprintZ       = 2,
				object           = [[debris2x2c.s3o]],
			},
		},
	} 
}
