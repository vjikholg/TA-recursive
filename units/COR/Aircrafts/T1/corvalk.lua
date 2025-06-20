return {
	corvalk = {
		acceleration = 0.09,
		bankscale = 1,
		blocking = false,
		brakerate = 0.25,
		buildcostenergy = 1437,
		buildcostmetal = 99,
		builder = false,
		buildpic = "corvalk.dds",
		buildtime = 4000,
		canfly = true,
		canguard = true,
		canload = 1,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL MOBILE VTOL",
		collide = false,
		collisionvolumeoffsets = "0 -3 0",
		collisionvolumescales = "27 27 50",
		collisionvolumetype = "box",
		cruisealt = 70,
		defaultmissiontype = "VTOL_standby",
		description = "Air Transport (until 1500 Metal cost unit)",
		explodeas = "BIG_UNITEX",
		firestandorders = 0,
		footprintx = 3,
		footprintz = 3,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 17,
		maneuverleashlength = 1280,
		mass = 74,
		maxdamage = 270,
		maxslope = 10,
		maxvelocity = 8,
		maxwaterdepth = 0,
		mobilestandorders = 0,
		moverate1 = 1,
		moverate2 = 2,
		name = "Valkyrie",
		noautofire = false,
		objectname = "core/corvalk.s3o",
		pitchscale = 1,
		radaremitheight = 28.8,
		releaseheld = true,
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT_VTOL",
		sightdistance = 125,
		standingmoveorder = 1,
		steeringmode = 1,
		transportcapacity = 1,
		transportmass = 1500,
		transportsize = 3,
		turninplaceanglelimit = 360,
		turninplacespeedlimit = 5.28,
		turnrate = 550,
		unitname = "corvalk",
		customparams = {
			buildpic = "corvalk.dds",
			faction = "CORE",
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
				[1] = "cor-air-tiny-ok",
			},
			select = {
				[1] = "cor-air-tiny-sel",
			},
		},
	},
}
