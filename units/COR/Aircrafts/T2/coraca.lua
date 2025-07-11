return {
	coraca = {
		acceleration = 0.066,
		bankscale = 1.5,
		blocking = false,
		brakerate = 0.4275,
		buildcostenergy = 16908,
		buildcostmetal = 564,
		builddistance = 120,
		builder = true,
		buildpic = "coraca.dds",
		buildtime = 32000,
		canfly = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canreclaim = true,
		canstop = 1,
		category = "ALL MOBILE VTOL",
		collide = false,
		cruisealt = 70,
		defaultmissiontype = "VTOL_Standby",
		description = "Tech Level 2",
		energymake = 20,
		energystorage = 20,
		explodeas = "SMALL_UNIT_VTOL",
		footprintx = 2,
		footprintz = 2,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 10.5,
		maneuverleashlength = 1280,
		mass = 564,
		maxdamage = 975,
		maxslope = 10,
		maxvelocity = 8,
		maxwaterdepth = 0,
		metalmake = 0.2,
		metalstorage = 20,
		mobilestandorders = 1,
		name = "Construction Aircraft",
		noautofire = false,
		objectname = "core/coraca.s3o",
		reclaimspeed = 50,
		repairspeed = 50,
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT_VTOL",
		shownanospray = false,
		sightdistance = 383,
		standingmoveorder = 1,
		steeringmode = 1,
		turninplaceanglelimit = 360,
		turninplacespeedlimit = 5.28,
		turnrate = 121,
		unitname = "coraca",
		workertime = 100,
		buildoptions = {
			[1] = "corgen",
			[2] = "corfus",
			[3] = "cmgeo",
			[4] = "corbhmth",
			[5] = "cormoho",
			[6] = "cormexp",
			[7] = "cormmkr",
			[9] = "coruwadves",
			[10] = "coruwadvms",
			[11] = "corap",
			[12] = "coraap",
			[13] = "coreap",
			--[14] = "",
			[15] = "corplat",
			[16] = "corasp",
			[17] = "cornanotc1",
			[18] = "cortarg",
			[19] = "corsd",
			[20] = "corgate",
			[21] = "cortron",
			[22] = "corfmd",
			[23] = "corsilo",
			[24] = "core_emp_lrpt",
			[25] = "corint",
			[26] = "corbuzz",
		},
		customparams = {
			buildpic = "coraca.dds",
			faction = "CORE",
		},
		nanocolor = {
			[1] = 0.144,
			[2] = 0.494,
			[3] = 0.494,
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
			repair = "conalt-small",
			underattack = "warning1",
			working = "conalt-small",
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
