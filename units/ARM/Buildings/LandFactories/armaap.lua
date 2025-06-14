return {
	armaap = {
		acceleration = 0,
		brakerate = 0,
		buildcostenergy = 32951,
		buildcostmetal = 3841,
		builder = true,
		buildinggrounddecaldecayspeed = 3000,
		buildinggrounddecalsizex = 9,
		buildinggrounddecalsizey = 7,
		buildinggrounddecaltype = "armaap_aoplane.dds",
		buildpic = "armaap.dds",
		buildtime = 40000,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "LEVEL1 ALL SURFACE",
		corpse = "dead1",
		description = "Tech Level 2",
		energystorage = 0,
		explodeas = "LARGE_BUILDINGEX",
		firestandorders = 1,
		footprintx = 8,
		footprintz = 6,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 67,
		mass = 4699,
		maxdamage = 3360,
		maxslope = 15,
		maxvelocity = 0,
		maxwaterdepth = 0,
		metalstorage = 0,
		mobilestandorders = 1,
		name = "Aircraft Plant",
		noautofire = false,
		objectname = "arm/armaap.s3o",
		radaremitheight = 67,
		seismicsignature = 0,
		selfdestructas = "LARGE_BUILDING",
		shownanospray = false,
		sightdistance = 312,
		standingfireorder = 2,
		standingmoveorder = 1,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0,
		turnrate = 0,
		unitname = "armaap",
		usebuildinggrounddecal = true,
		usepiececollisionvolumes = true,
		usepieceselectionvolumes = true,
		workertime = 400,
		yardmap = "oooooooooooooooooooooooooooooooooooooooooooooooo",
		buildoptions = {
			[1] = "armaca",
			[2] = "abuilderlvl1",
			[3] = "armawac",
			[4] = "armhawk",
			[5] = "armbrawl",
			[6] = "armpnix",
			[7] = "armgripn",
			[8] = "armlance",
			[9] = "armdfly",
			[10] = "armcybr",
		},
		customparams = {
			buildpic = "armaap.dds",
			faction = "ARM",
			normaltex = "unittextures/arm_normals.dds",
		},
		featuredefs = {
			dead1 = {
				blocking = true,
				collisionvolumeoffsets = "0 -17 -23",
				collisionvolumescales = "106 40 48",
				collisionvolumetype = "Box",
				damage = 2968,
				description = "Advanced Aircraft Plant Wreckage",
				energy = 10000,
				featuredead = "heap1",
				footprintx = 7,
				footprintz = 6,
				metal = 3524,
				object = "arm/armaap_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap1 = {
				blocking = false,
				damage = 3711,
				description = "Advanced Aircraft Plant Debris",
				energy = 4000,
				footprintx = 6,
				footprintz = 6,
				metal = 1879,
				object = "6x6a.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		nanocolor = {
			[1] = 0.26,
			[2] = 0.66,
			[3] = 0.26,
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:YellowLight",
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
			build = "arm-bld-ap",
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
				[1] = "arm-bld-factory",
			},
		},
	},
}
