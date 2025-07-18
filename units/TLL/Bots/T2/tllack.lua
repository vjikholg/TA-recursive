return {
	tllack = {
		acceleration = 1.92,
		brakerate = 7.2,
		buildcostenergy = 8357,
		buildcostmetal = 635,
		builddistance = 200,
		builder = true,
		buildpic = "tllack.dds",
		buildtime = 20000,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canreclamate = 1,
		canstop = 1,
		category = "ALL MEDIUM MOBILE SURFACE UNDERWATER",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Tech Level 2",
		energymake = 10,
		energystorage = 10,
		explodeas = "BIG_UNITEX",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 36,
		maneuverleashlength = 640,
		mass = 635,
		maxdamage = 1135,
		maxslope = 20,
		maxvelocity = 1.15,
		maxwaterdepth = 25,
		metalmake = 0.3,
		metalstorage = 30,
		mobilestandorders = 1,
		movementclass = "KBOT3",
		name = "Construction Kbot",
		noautofire = false,
		objectname = "tll/tllack.s3o",
		radaremitheight = 36,
		reclaimspeed = 100,
		repairspeed = 100,
		selfdestructas = "BIG_UNIT",
		shownanospray = false,
		sightdistance = 250,
		standingmoveorder = 1,
		steeringmode = 1,
		turninplace = 1,
		turninplaceanglelimit = 60,
		turninplacespeedlimit = 0.561,
		turnrate = 800,
		unitname = "tllack",
		upright = true,
		workertime = 200,
		buildoptions = {
			[1] = "tllgen",
			[2] = "tllmedfusion",
			[3] = "tllmohogeo",
			[4] = "tllgeo_armored",
			[5] = "tllmoho",
			[6] = "tllamoho",
			[7] = "tllammaker",
			[8] = "tllemstor",
			[9] = "tlllab",
			[10] = "tllalab",
			[11] = "tllturtle_lab",
			[12] = "tll_elab",
			[13] = "tllnanotc1",
			[14] = "tlltarg",
			[15] = "tllrichter",
			[16] = "tllgate",
			[17] = "tllemp",
			[18] = "tllantinuke",
			[19] = "tllsilo",
			[20] = "tlllrpt",
			[21] = "tll_emp_lrpt",
			[22] = "tll_hydre",
		},
		customparams = {
			buildpic = "tllack.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 1298,
				description = "Advanced Construction Kbot Wreckage",
				featuredead = "heap",
				footprintx = 2,
				footprintz = 2,
				metal = 1217,
				object = "tll/tllack_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 1622,
				description = "Advanced Construction Kbot Debris",
				footprintx = 2,
				footprintz = 2,
				metal = 876,
				object = "2x2b.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		nanocolor = {
			[1] = 0.542,
			[2] = 0.542,
			[3] = 0.192,
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
				[1] = "leg-bot-small-ok",
			},
			select = {
				[1] = "leg-bot-small-sel",
			},
		},
	},
}
