return {
	armawac = {
		acceleration = 0.04095,
		altfromsealevel = 1,
		bankscale = 1,
		blocking = false,
		brakerate = 0.05,
		buildcostenergy = 6912,
		buildcostmetal = 125,
		builder = false,
		buildpic = "armawac.dds",
		buildtime = 7500,
		canfly = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL MINOR MOBILE VTOL",
		collide = false,
		cruisealt = 160,
		defaultmissiontype = "VTOL_standby",
		description = "Radar/Sonar Plane",
		explodeas = "BIG_UNITEX",
		footprintx = 3,
		footprintz = 3,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 6,
		maneuverleashlength = 1280,
		mass = 125,
		maxdamage = 800,
		maxslope = 10,
		maxvelocity = 11,
		maxwaterdepth = 0,
		mobilestandorders = 1,
		name = "Eagle",
		noautofire = false,
		objectname = "arm/armawac.s3o",
		radardistance = 1600,
		radaremitheight = 6,
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT_VTOL",
		sightdistance = 1200,
		sonardistance = 1200,
		standingmoveorder = 1,
		steeringmode = 1,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 7.26,
		turnrate = 392,
		unitname = "armawac",
		customparams = {
			buildpic = "armawac.dds",
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
				[1] = "arm-air-medium-ok",
			},
			select = {
				[1] = "radar",
			},
		},
	},
}
