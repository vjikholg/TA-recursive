return {
	armach = {
		acceleration = 0.48,
		brakerate = 0.048,
		buildcostenergy = 12198,
		buildcostmetal = 611,
		builddistance = 230,
		builder = true,
		buildpic = "armach.dds",
		buildtime = 25000,
		canguard = true,
		canhover = true,
		canmove = true,
		canpatrol = true,
		canreclamate = 1,
		canstop = 1,
		category = "ALL LARGE MOBILE SURFACE",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Tech Level 2",
		downloadable = 1,
		energymake = 20,
		energystorage = 20,
		explodeas = "BIG_UNITEX",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 22,
		maneuverleashlength = 640,
		mass = 611,
		maxdamage = 1225,
		maxslope = 16,
		maxvelocity = 2.25,
		maxwaterdepth = 0,
		metalmake = 0.2,
		metalstorage = 20,
		mobilestandorders = 1,
		movementclass = "TANKHOVER4",
		name = "Construction Hover",
		noautofire = false,
		objectname = "arm/armach.s3o",
		radaremitheight = 25,
		reclaimspeed = 80,
		repairspeed = 80,
		selfdestructas = "BIG_UNIT",
		shownanospray = false,
		sightdistance = 270,
		standingmoveorder = 1,
		steeringmode = 1,
		turninplace = 1,
		turninplaceanglelimit = 60,
		turninplacespeedlimit = 1.056,
		turnrate = 220,
		unitname = "armach",
		workertime = 160,
		buildoptions = {
			[1] = "armfus",
			[2] = "aafus",
			[3] = "amgeo",
			[4] = "armmmkr",
			[5] = "armuwadves",
			[6] = "armuwadvms",
			[7] = "armmoho",
			[8] = "armimoho",
			[9] = "armhp",
			[10] = "aahp",
			[11] = "armevp",
			[12] = "armnanotc1",
			[13] = "armsd",
			[14] = "armgate",
			[15] = "armemp",
			[16] = "armamd",
			[17] = "armsilo",
			[18] = "armbrtha",
			[19] = "armvulc",
			[20] = "armuwfus",
			[21] = "armuwmmm",
			[22] = "armsy",
			[23] = "armplat",
			[24] = "armasy",
			[25] = "asubpen",
			[26] = "aahpns",
			[27] = "armesy",
			[28] = "armfnanotc1",
			[29] = "armfatf",
			[30] = "armason",
			[31] = "armflosh",
		},
		customparams = {
			buildpic = "armach.dds",
			faction = "ARM",
			normaltex = "unittextures/arm_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 2323,
				description = "Advanced Construction Hover Wreckage",
				footprintx = 3,
				footprintz = 4,
				metal = 1411,
				object = "arm/armach_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		nanocolor = {
			[1] = 0.324,
			[2] = 0.724,
			[3] = 0.324,
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
				[1] = "hovmdok1",
			},
			select = {
				[1] = "hovmdsl1",
			},
		},
	},
}
