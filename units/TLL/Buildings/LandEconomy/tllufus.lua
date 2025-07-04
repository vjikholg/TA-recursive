return {
	tllufus = {
		activatewhenbuilt = true,
		buildangle = 16000,
		buildcostenergy = 10164000,
		buildcostmetal = 1601568,
		builder = false,
		buildpic = "tllufus.dds",
		buildtime = 15000000,
		category = "ALL SURFACE",
		collisionvolumeoffsets = "0 -5 -20",
		collisionvolumescales = "420 300 420",
		collisionvolumetype = "CylY",
		corpse = "dead",
		description = "Produces Energy / Storage",
		energymake = 480000,
		energystorage = 480000,
		energyuse = 0,
		explodeas = "FUSION_SUPERBLAST2",
		footprintx = 20,
		footprintz = 20,
		hidedamage = true,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 500,
		mass = 1601568,
		maxdamage = 107250,
		maxslope = 10,
		maxvelocity = 0,
		maxwaterdepth = 1,
		name = "Adv Ultimate Fusion Reactor",
		noautofire = false,
		objectname = "tll/tllufus.s3o",
		radaremitheight = 500,
		seismicsignature = 0,
		selfdestructas = "FUSION_SUPERBLAST2",
		sightdistance = 500,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0,
		turnrate = 0,
		unitname = "tllufus",
		yardmap = "oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo oooooooooooooooooooo",
		customparams = {
			buildpic = "tllufus.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 18889,
				description = "Ultimate Fusion Reactor Wreckage",
				energy = 0,
				featuredead = "heap",
				footprintx = 25,
				footprintz = 25,
				metal = 109000,
				object = "tll/tllufus_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 11111,
				description = "Ultimate Fusion Reactor Debris",
				energy = 0,
				footprintx = 5,
				footprintz = 5,
				metal = 95000,
				object = "5x5d.s3o",
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
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "arm-bld-nrg-fusion-adv",
			},
		},
	},
}
