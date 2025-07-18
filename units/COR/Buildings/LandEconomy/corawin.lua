return {
	corawin = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildcostenergy = 1207,
		buildcostmetal = 158,
		builder = false,
		buildpic = "corawin.dds",
		buildtime = 6000,
		category = "ALL SURFACE",
		collisionvolumeoffsets = "0 -7 0",
		collisionvolumescales = "60 90 60",
		collisionvolumetype = "CylY",
		corpse = "dead",
		description = "Produces Energy",
		explodeas = "LARGE_BUILDINGEX",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 124,
		mass = 161,
		maxdamage = 685,
		maxslope = 10,
		maxvelocity = 0,
		maxwaterdepth = 0,
		name = "Advanced Wind Generator",
		noautofire = false,
		objectname = "core/corawin.s3o",
		radaremitheight = 123,
		seismicsignature = 0,
		selfdestructas = "LARGE_BUILDING",
		sightdistance = 273,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0,
		turnrate = 0,
		unitname = "corawin",
		windgenerator = 100,
		yardmap = "oooo oooo oooo oooo",
		customparams = {
			buildpic = "corawin.dds",
			energymultiplier = 4,
			faction = "CORE",
			normaltex = "unittextures/core_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 750,
				description = "Advanced Wind Generator Wreckage",
				energy = 0,
				featuredead = "heap",
				footprintx = 7,
				footprintz = 7,
				metal = 107,
				object = "core/corawin_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 938,
				description = "Advanced Wind Generator Debris",
				energy = 0,
				footprintx = 7,
				footprintz = 7,
				metal = 57,
				object = "7x7a.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "piecetrail5",
				[2] = "piecetrail5",
				[3] = "piecetrail4",
				[4] = "piecetrail6",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			select = "arm-bld-windgen",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "windgen2",
			},
		},
	},
}
