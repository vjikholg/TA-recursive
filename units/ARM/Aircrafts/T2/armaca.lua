return {
	armaca = {
		acceleration = 0.08,
		bankscale = 1.5,
		blocking = false,
		brakerate = 0.4275,
		buildcostenergy = 17007,
		buildcostmetal = 570,
		builddistance = 130,
		builder = true,
		buildpic = "armaca.dds",
		buildtime = 32000,
		canfly = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canreclaim = true,
		canstop = 1,
		category = "ALL MOBILE VTOL",
		collide = false,
		corpse = "heap",
		cruisealt = 80,
		defaultmissiontype = "VTOL_standby",
		description = "Tech Level 2",
		energymake = 20,
		energystorage = 20,
		energyuse = 0,
		explodeas = "SMALL_UNIT_VTOL",
		footprintx = 2,
		footprintz = 2,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 7,
		maneuverleashlength = 1280,
		mass = 570,
		maxdamage = 880,
		maxslope = 10,
		maxvelocity = 8.4,
		maxwaterdepth = 0,
		metalmake = 0.2,
		metalstorage = 20,
		mobilestandorders = 1,
		name = "Construction Aircraft",
		noautofire = false,
		objectname = "arm/armaca.s3o",
		reclaimspeed = 45,
		repairspeed = 45,
		radaremitheight = 7,
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT_VTOL",
		shownanospray = false,
		sightdistance = 383,
		standingmoveorder = 1,
		steeringmode = 1,
		turninplaceanglelimit = 360,
		turninplacespeedlimit = 5.544,
		turnrate = 138,
		unitname = "armaca",
		workertime = 90,
		buildoptions = {
			[1] = "armgen",
			[2] = "armfus",
			[3] = "amgeo",
			[4] = "armgmm",
			[5] = "armmoho",
			[6] = "armimoho",
			[7] = "armmmkr",
			[9] = "armuwadves",
			[10] = "armuwadvms",
			[11] = "armap",
			[12] = "armaap",
			[13] = "armeap",
			--[14] = "",
			--[15] = "",
			[16] = "armasp",
			[17] = "armnanotc1",
			[18] = "armtarg",
			[19] = "armsd",
			[20] = "armgate",
			[21] = "armemp",
			[22] = "armamd",
			[23] = "armsilo",
			[24] = "arm_emp_lrpt",
			[25] = "armbrtha",
			[26] = "armvulc",
			[27] = "armplat",
			[28] = "armeplat",
		},
		customparams = {
			buildpic = "armaca.dds",
			faction = "ARM",
			normaltex = "unittextures/arm_normals.dds",
		},
		featuredefs = {
			heap = {
				blocking = false,
				damage = 4641,
				description = "Aircraft Debris",
				footprintx = 2,
				footprintz = 2,
				metal = 192,
				object = "2x2z.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		nanocolor = {
			[1] = 0.144,
			[2] = 0.544,
			[3] = 0.144,
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "piecetrail0",
				[2] = "piecetrail1",
				[3] = "piecetrail2",
				[4] = "piecetrail3",
				[5] = "piecetrail4",
				[6] = "piecetrail6",
			},
		},
		sounds = {
			build = "conalt-small",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "arm-air-medium-ok",
			},
			select = {
				[1] = "arm-air-medium-sel",
			},
		},
	},
}
