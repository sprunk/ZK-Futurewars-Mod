-- prettypop

return {
	["impulsepop_40"] = {
		groundflash = {
			circlealpha        = 0.5,
			circlegrowth       = 1,
			flashalpha         = 1,
			flashsize          = 0,
			ttl                = 10,
			color = {
				[1]  = 1,
				[2]  = 0.40000000596046,
				[3]  = 0.10000000149012,
			},
		},
		sphere = {
			air                   = true,
			class                 = [[CSpherePartSpawner]],
			count                 = 1,
			ground                = true,
			water                 = true,
			underwater            = true,
			properties = {
				alpha               = 0.33,
				color               = [[0.45,0.35,0.35]],
				expansionspeed      = 4,
				ttl                 = 10,
			},
		},
		sparks = {
			air                = true,
			class              = [[CSimpleParticleSystem]],
			count              = 1,
			ground             = true,
			water              = true,
			properties = {
				airdrag            = 0.97,
				colormap           = [[1 1 0 0.01   1 1 0 0.01   1 0.5 0 0.01   0 0 0 0.01]],
				directional        = true,
				emitrot            = 0,
				emitrotspread      = 90,
				emitvector         = [[dir]],
				gravity            = [[0, -0.4, 0]],
				numparticles       = 4,
				particlelife       = 10,
				particlelifespread = 0,
				particlesize       = 9,
				particlesizespread = 0,
				particlespeed      = 5,
				particlespeedspread = 10,
				pos                = [[0, 1, 0]],
				sizegrowth         = 0,
				sizemod            = 1.0,
				texture            = [[plasma]],
			},
		},
		pop1 = {
			air                = true,
			class              = [[heatcloud]],
			count              = 1,
			ground             = true,
			water              = true,
			properties = {
				alwaysvisible      = true,
				heat               = 10,
				heatfalloff        = 1,
				maxheat            = 10,
				pos                = [[r-2 r2, 5, r-2 r2]],
				size               = 1,
				sizegrowth         = 4,
				speed              = [[0, 0, 0]],
				texture            = [[redexplo]],
			},
		},
	},
}
