return {
	tllvp = {
		buildangle = 1024,
		buildcostenergy = 1572,
		buildcostmetal = 821,
		builder = true,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 9,
		buildinggrounddecalsizey = 9,
		buildinggrounddecaltype = "tllvp_aoplane.dds",
		buildpic = "tllvp.dds",
		buildtime = 5750,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL SURFACE",
		collisionvolumeoffsets = "0 -26 0",
		collisionvolumescales = "120 78 120",
		collisionvolumetype = "CylY",
		corpse = "dead",
		description = "Tech Level 1",
		energyuse = 0,
		explodeas = "LARGE_BUILDINGEX",
		firestandorders = 1,
		footprintx = 8,
		footprintz = 6,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 43,
		mass = 848,
		maxdamage = 2818,
		maxslope = 10,
		maxwaterdepth = 0,
		mobilestandorders = 1,
		name = "Vehicle Lab",
		noautofire = false,
		objectname = "tll/tllvp.s3o",
		radaremitheight = 42,
		selfdestructas = "LARGE_BUILDING",
		shownanospray = false,
		sightdistance = 210,
		standingfireorder = 2,
		standingmoveorder = 2,
		unitname = "tllvp",
		usebuildinggrounddecal = true,
		workertime = 250,
		yardmap = "ooccccoo ooccccoo ooccccoo ooccccoo ooccccoo ooccccoo",
		buildoptions = {
			[1] = "tllcv",
			[2] = "tllmando",
			[3] = "tllmlv",
			[4] = "tllgladius",
			[5] = "tllares",
			[6] = "tllhoplit",
			[7] = "tllshaker",
			[8] = "tllariman",
			[9] = "tllriot",
			[10] = "tllsalamander",
		},
		customparams = {
			buildpic = "tllvp.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 2601,
				description = "Vehicle Plant Wreckage",
				featuredead = "heap",
				footprintx = 8,
				footprintz = 6,
				metal = 636,
				object = "tll/tllvp_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 3252,
				description = "Vehicle Plant Debris",
				featuredead = "heap2",
				footprintx = 8,
				footprintz = 6,
				metal = 339,
				object = "6x6c.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap2 = {
				blocking = false,
				damage = 1626,
				description = "Vehicle Plant Metal Shards",
				footprintx = 8,
				footprintz = 6,
				metal = 212,
				object = "4x4c.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		nanocolor = {
			[1] = 0.526,
			[2] = 0.526,
			[3] = 0.176,
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
			underattack = "warning1",
			unitcomplete = "arm-bld-factory",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "arm-bld-factory",
			},
		},
	},
}
