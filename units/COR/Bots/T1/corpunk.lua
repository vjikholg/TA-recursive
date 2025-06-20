return {
	corpunk = {
		acceleration = 0.5,
		brakerate = 1.5,
		buildcostenergy = 373,
		buildcostmetal = 17,
		builder = false,
		buildpic = "corpunk.dds",
		buildtime = 880,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL MOBILE MINOR SURFACE UNDERWATER",
		corpse = "armflea_dead",
		defaultmissiontype = "Standby",
		description = "Stealthy Scout Kbot",
		explodeas = "FLEA_EX",
		firestandorders = 1,
		footprintx = 1,
		footprintz = 1,
		idleautoheal = 5,
		idletime = 250,
		losemitheight = 22,
		maneuverleashlength = 640,
		mass = 17,
		maxdamage = 50,
		maxslope = 255,
		maxvelocity = 4.4,
		maxwaterdepth = 16,
		mobilestandorders = 1,
		movementclass = "KBOT1",
		name = "Punkie",
		noautofire = false,
		objectname = "core/corpunk.s3o",
		radaremitheight = 25,
		seismicsignature = 0,
		selfdestructas = "FLEA_EX",
		sightdistance = 650,
		standingfireorder = 2,
		standingmoveorder = 1,
		stealth = true,
		steeringmode = 2,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 2.904,
		turnrate = 1672,
		unitname = "corpunk",
		wpri_badtargetcategory = "ANTIGATOR",
		customparams = {
			buildpic = "corpunk.dds",
			faction = "CORE",
			normaltex = "unittextures/core_normals.dds",
		},
		featuredefs = {
			armflea_dead = {
				blocking = false,
				damage = 126,
				description = "Punkie Wreckage",
				energy = 0,
				featuredead = "armflea_heap",
				footprintx = 1,
				footprintz = 1,
				metal = 12,
				object = "arm/armflea_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			armflea_heap = {
				blocking = false,
				damage = 158,
				description = "Punkie Debris",
				energy = 0,
				footprintx = 1,
				footprintz = 1,
				metal = 6,
				object = "1x1a.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
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
			canceldestruct = "cancel2",
			underattack = "warning1",
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
				[1] = "cor-bot-tiny-ok",
			},
			select = {
				[1] = "cor-bot-tiny-ok",
			},
		},
	},
}
