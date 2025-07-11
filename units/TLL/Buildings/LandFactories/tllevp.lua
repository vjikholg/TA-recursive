return {
	tllevp = {
		buildangle = 1024,
		buildcostenergy = 282960,
		buildcostmetal = 16625,
		builder = true,
		buildpic = "tllevp.dds",
		buildtime = 320000,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL LEVEL2 SURFACE",
		collisionvolumeoffsets = "0 -7 0",
		collisionvolumescales = "189 51 138",
		collisionvolumetype = "box",
		corpse = "dead",
		description = "Tech Level 3",
		downloadable = 1,
		energystorage = 500,
		explodeas = "LARGE_BUILDINGEX",
		firestandorders = 1,
		footprintx = 12,
		footprintz = 8,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 57,
		mass = 17931,
		maxdamage = 15510,
		maxslope = 10,
		maxwaterdepth = 0,
		mobilestandorders = 1,
		name = "Experimental Vehicle Plant",
		noautofire = false,
		objectname = "tll/tllevp.s3o",
		radardistance = 0,
		radaremitheight = 56,
		selfdestructas = "LARGE_BUILDING",
		shownanospray = false,
		sightdistance = 220,
		sortbias = 0,
		standingfireorder = 2,
		standingmoveorder = 1,
		unitname = "tllevp",
		workertime = 850,
		yardmap = "ooccccccccoo ooccccccccoo ooccccccccoo ooccccccccoo ooccccccccoo ooccccccccoo ooccccccccoo ooccccccccoo",
		buildoptions = {
			[1] = "tllecv",
			[2] = "tlltelsatnk",
			[3] = "tllmlrpc",
			[4] = "tllmantis",
			[5] = "tllinsulator",
			[6] = "tllacid",
			[7] = "tlldemon",
			[8] = "tllanvil",
			[9] = "tllmosasaurus",
		},
		customparams = {
			buildpic = "tllevp.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				catagory = "corpses",
				damage = 6977,
				description = "EVP Wreckage",
				featuredead = "heap",
				footprintx = 6,
				footprintz = 6,
				metal = 13425,
				object = "tll/tllevp_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				catagory = "heaps",
				damage = 8722,
				description = "EVP Debris",
				footprintx = 4,
				footprintz = 4,
				metal = 7160,
				object = "4x4a.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		nanocolor = {
			[1] = 0.79,
			[2] = 0.79,
			[3] = 0.44,
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
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "arm-bld-factory-t3",
			},
		},
	},
}
