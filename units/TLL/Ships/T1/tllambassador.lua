return {
	tllambassador = {
		acceleration = 0.09,
		brakerate = 0.546,
		buildangle = 16384,
		buildcostenergy = 10294,
		buildcostmetal = 1308,
		builder = false,
		buildpic = "tllambassador.dds",
		buildtime = 15000,
		canguard = true,
		canload = 1,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL LARGE MOBILE",
		collisionvolumeoffsets = "0 -13 0",
		collisionvolumescales = "82.450546264648 100.45054626465 134.45054626465",
		collisionvolumetype = "ellipsoid",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Armored Transport Ship",
		explodeas = "BIG_UNITEX",
		firestandorders = 0,
		floater = true,
		footprintx = 5,
		footprintz = 5,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 70,
		maneuverleashlength = 640,
		mass = 1308,
		maxdamage = 10150,
		maxvelocity = 2.85,
		minwaterdepth = 12,
		mobilestandorders = 0,
		movementclass = "BOAT5",
		name = "Ambassador",
		noautofire = false,
		objectname = "tll/tllambassador.s3o",
		radaremitheight = 70,
		selfdestructas = "BIG_UNIT",
		sightdistance = 325,
		standingmoveorder = 1,
		steeringmode = 1,
		transportcapacity = 20,
		transportsize = 3,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.881,
		turnrate = 310,
		unitname = "tllambassador",
		waterline = 6,
		customparams = {
			buildpic = "tllambassador.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 9209,
				description = "Ambassador Wreckage",
				featuredead = "heap",
				footprintx = 6,
				footprintz = 6,
				metal = 756,
				object = "tll/tllambassador_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 11511,
				description = "Ambassador Debris",
				footprintx = 6,
				footprintz = 6,
				metal = 403,
				object = "4x4c.s3o",
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
				[1] = "arm-shp-small-ok",
			},
			select = {
				[1] = "arm-shp-small-sel",
			},
		},
	},
}
