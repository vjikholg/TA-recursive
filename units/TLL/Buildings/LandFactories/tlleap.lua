return {
	tlleap = {
		buildcostenergy = 315001,
		buildcostmetal = 20415,
		builder = true,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 13,
		buildinggrounddecalsizey = 13,
		buildinggrounddecaltype = "tlleap_aoplane.dds",
		buildpic = "tlleap.dds",
		buildtime = 300000,
		canbeassisted = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "LEVEL2 ALL SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "160 80 160",
		collisionvolumetype = "CylY",
		corpse = "dead",
		description = "Tech Level 3",
		energystorage = 300,
		energyuse = 0,
		explodeas = "LARGE_BUILDINGEX",
		firestandorders = 1,
		footprintx = 10,
		footprintz = 10,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 64,
		mass = 19952,
		maxdamage = 13000,
		maxslope = 15,
		maxwaterdepth = 0,
		metalstorage = 300,
		mobilestandorders = 1,
		name = "Experimental Aircraft Plant",
		noautofire = false,
		objectname = "tll/tlleap.s3o",
		radaremitheight = 64,
		seismicsignature = 0,
		selfdestructas = "LARGE_BUILDING",
		shownanospray = false,
		sightdistance = 305.5,
		standingfireorder = 2,
		standingmoveorder = 1,
		turnrate = 0,
		unitname = "tlleap",
		workertime = 800,
		yardmap = "oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo",
		buildoptions = {
			[1] = "tlleca",
			[2] = "tllerez",
			[3] = "tllshu",
			[4] = "tllnuada",
			[5] = "tllbtrans",
			[6] = "tllanhur",
			[7] = "tllaether",
		},
		customparams = {
			buildpic = "tlleap.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = false,
				damage = 8190,
				description = "Experimental Aircraft Plant Wreckage",
				energy = 0,
				featuredead = "heap",
				footprintx = 10,
				footprintz = 10,
				metal = 14955,
				object = "tll/tlleap_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 10237,
				description = "Experimental Aircraft Plant Debris",
				energy = 0,
				footprintx = 9,
				footprintz = 9,
				metal = 7976,
				object = "7x7b.s3o",
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
				[1] = "arm-bld-ap-t2",
			},
		},
	},
}
