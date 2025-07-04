return {
	armpeep = {
		acceleration = 0.21562,
		bankscale = 1,
		blocking = false,
		brakerate = 0.0112,
		buildcostenergy = 1352,
		buildcostmetal = 35,
		builder = false,
		buildpic = "armpeep.dds",
		buildtime = 2100,
		canfly = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL MOBILE MINOR VTOL",
		collide = false,
		cruisealt = 180,
		defaultmissiontype = "VTOL_standby",
		description = "Scout Plane",
		explodeas = "SMALL_UNITEX",
		footprintx = 2,
		footprintz = 2,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 4,
		maneuverleashlength = 1280,
		mass = 35,
		maxdamage = 80,
		maxslope = 10,
		maxvelocity = 13.8,
		maxwaterdepth = 0,
		mobilestandorders = 1,
		name = "Peeper",
		noautofire = false,
		objectname = "arm/armpeep.s3o",
		radardistance = 1000,
		radaremitheight = 4,
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT_VTOL",
		selfdestructcountdown = 1,
		sightdistance = 850,
		standingmoveorder = 1,
		steeringmode = 1,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 9.108,
		turnrate = 880,
		unitname = "armpeep",
		customparams = {
			buildpic = "armpeep.dds",
			faction = "ARM",
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
				[1] = "arm-air-small-ok",
			},
			select = {
				[1] = "arm-air-small-sel",
			},
		},
	},
}
