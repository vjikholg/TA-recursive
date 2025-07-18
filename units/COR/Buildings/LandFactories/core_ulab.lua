return {
	core_ulab = {
		buildcostenergy = 1552290,
		buildcostmetal = 86630,
		builder = true,
		buildinggrounddecaldecayspeed = 0.01,
		buildinggrounddecalsizex = 20,
		buildinggrounddecalsizey = 20,
		buildinggrounddecaltype = "core_ulab_aoplane.dds",
		buildpic = "core_hexapod_lab.dds",
		buildtime = 1000000,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "LEVEL3 ALL SURFACE",
		collisionvolumeoffsets = "0 -70 0",
		collisionvolumescales = "283 183 183",
		collisionvolumetype = "CylX",
		corpse = "heap",
		description = "Produces T4 Units",
		explodeas = "LARGE_BUILDINGEX",
		firestandorders = 1,
		footprintx = 20,
		footprintz = 12,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 68,
		mass = 86630,
		maxdamage = 60055,
		maxslope = 18,
		maxwaterdepth = 0,
		mobilestandorders = 1,
		name = "Prototype Lab",
		noautofire = false,
		objectname = "core/core_ulab.s3o",
		radardistance = 50,
		radaremitheight = 68,
		seismicsignature = 0,
		selfdestructas = "LARGE_BUILDING",
		shownanospray = false,
		sightdistance = 273,
		standingfireorder = 2,
		standingmoveorder = 1,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0,
		turnrate = 0,
		unitname = "core_ulab",
		workertime = 1600,
		yardmap = "yyooccccccccccccoooo yoooccccccccccccoooy ooooccccccccccccoooo ooooccccccccccccoooo ooooccccccccccccoooo ooooccccccccccccoooo ooooccccccccccccoooo ooooccccccccccccoooo ooooccccccccccccoooo ooooccccccccccccoooo yoooccccccccccccoooy yyooccccccccccccooyy",
		buildoptions = {
			[1] = "corcrab",
			[2] = "corsingularity",
			[3] = "cormonkeylord",
			[4] = "corarbritator",
			[5] = "corhflag",
			[6] = "corpokie",
			[7] = "cormkl",
			[8] = "corshock",
			[9] = "corlift",
		},
		customparams = {
			buildpic = "core_hexapod_lab.dds",
			faction = "CORE",
			normaltex = "unittextures/core_normals.dds",
		},
		featuredefs = {
			heap = {
				blocking = false,
				damage = 11399,
				description = "Prototype Hexapod Lab Debris",
				energy = 0,
				footprintx = 18,
				footprintz = 18,
				metal = 30840,
				object = "7x7c.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		nanocolor = {
			[1] = 0.34,
			[2] = 0.69,
			[3] = 0.69,
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:GantWhiteLight",
				[2] = "custom:YellowLight",
				[3] = "custom:WhiteLight",
			},
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
			activate = "arm-bld-gant-t3-ok",
			build = "arm-bld-gant-t3-ok",
			canceldestruct = "cancel2",
			deactivate = "arm-bld-gant-t3-ok",
			repair = "conalt-medium",
			underattack = "warning1",
			unitcomplete = "arm-bld-gant-t3-ok",
			working = "build",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "gantsel1",
			},
		},
	},
}
