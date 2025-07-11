return {
	corcv = {
		acceleration = 0.2288,
		brakerate = 2.1384,
		buildcostenergy = 1811,
		buildcostmetal = 143,
		builddistance = 160,
		builder = true,
		buildpic = "corcv.dds",
		buildtime = 4000,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canreclamate = 1,
		canstop = 1,
		category = "ALL MOBILE SMALL SURFACE UNDERWATER",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "35 22 49",
		collisionvolumetype = "Box",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Tech Level 1",
		energymake = 10,
		energystorage = 50,
		explodeas = "BIG_UNITEX",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		losemitheight = 22,
		maneuverleashlength = 640,
		mass = 215,
		maxdamage = 1115,
		maxslope = 16,
		maxvelocity = 1.8,
		maxwaterdepth = 19,
		metalmake = 0.1,
		metalstorage = 25,
		mobilestandorders = 1,
		movementclass = "TANK3",
		name = "Construction Vehicle",
		noautofire = false,
		objectname = "core/corcv.s3o",
		radaremitheight = 22,
		reclaimspeed = 45,
		repairspeed = 45,
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT",
		shownanospray = false,
		sightdistance = 260,
		standingmoveorder = 1,
		steeringmode = 1,
		trackoffset = 3,
		trackstrength = 6,
		trackstretch = 1,
		tracktype = "StdTank",
		trackwidth = 32,
		turninplace = 1,
		turninplaceanglelimit = 60,
		turninplacespeedlimit = 1.1979,
		turnrate = 415,
		unitname = "corcv",
		workertime = 90,
		buildoptions = {
			[1] = "corsolar",
			[2] = "coradvsol",
			[3] = "corwin",
			[4] = "corawin",
			[5] = "corgeo",
			[6] = "cormstor",
			[7] = "corestor",
			[8] = "cormex",
			[9] = "cormex1",
			[10] = "cormakr",
			[11] = "coramaker",
			[12] = "corlab",
			[13] = "corvp",
			[14] = "coravp",
			[15] = "corap",
			[16] = "corhp",
			[17] = "cornanotc",
			[18] = "coreyes",
			[19] = "corrad",
			[20] = "corjamt",
			[21] = "cjuno",
			[22] = "corgate2",
			[23] = "cordrag",
			[24] = "cormaw",
			[25] = "corllt",
			[26] = "corhllt",
			[27] = "corhlt",
			[28] = "corpun",
			[29] = "corint2",
			[30] = "corrl",
			[31] = "corsam",
			[32] = "corerad",
			[33] = "cordl",
			[34] = "corsy",
			[35] = "gate",
		},
		customparams = {
			buildpic = "corcv.dds",
			faction = "CORE",
			normaltex = "unittextures/core_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				collisionvolumeoffsets = "0.31364440918 1.09863281317e-06 0.657264709473",
				collisionvolumescales = "32.9147644043 17.5585021973 49.4168548584",
				collisionvolumetype = "Box",
				damage = 1448,
				description = "Construction Vehicle Wreckage",
				featuredead = "heap",
				footprintx = 3,
				footprintz = 3,
				metal = 107,
				object = "core/corcv_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 1810,
				description = "Construction Vehicle Debris",
				footprintx = 3,
				footprintz = 3,
				metal = 57,
				object = "3x3d.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		nanocolor = {
			[1] = 0.072,
			[2] = 0.422,
			[3] = 0.422,
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
			capture = "capture1",
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
				[1] = "cor-tnk-medium-ok",
			},
			select = {
				[1] = "cor-tnk-medium-sel",
			},
		},
	},
}
