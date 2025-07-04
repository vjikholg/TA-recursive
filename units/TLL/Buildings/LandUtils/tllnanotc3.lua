return {
	tllnanotc3 = {
		acceleration = 0,
		brakerate = 4.5,
		buildcostenergy = 179800,
		buildcostmetal = 10510,
		builddistance = 750,
		builder = true,
		buildpic = "tllnanotc3.dds",
		buildtime = 90000,
		canguard = true,
		canmove = false,
		canpatrol = true,
		canreclamate = 1,
		canstop = 1,
		cantbetransported = true,
		category = "ALL SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "38 38 38",
		collisionvolumetype = "CylY",
		defaultmissiontype = "Standby",
		description = "Repairs and builds in large radius",
		explodeas = "NANOBOOM5C",
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 37,
		maneuverleashlength = 380,
		mass = 7253,
		maxdamage = 2000,
		maxslope = 10,
		maxvelocity = 0,
		maxwaterdepth = 0,
		name = "Nano Turret Level 4",
		noautofire = false,
		objectname = "tll/tllnanotc3.s3o",
		radaremitheight = 37,
		reclaimspeed = 1200,
		repairspeed = 1200,
		script = "cornanotc.cob",
		seismicsignature = 0,
		selfdestructas = "NANOBOOM5",
		shownanospray = false,
		sightdistance = 375,
		steeringmode = 1,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0,
		turnrate = 1,
		unitname = "tllnanotc3",
		upright = true,
		workertime = 2400,
		customparams = {
			buildpic = "tllnanotc3.dds",
			faction = "TLL",
		},
		nanocolor = {
			[1] = 0.8,
			[2] = 1,
			[3] = 1,
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
			capture = "capture1",
			repair = "conalt-small",
			underattack = "warning1",
			working = "conalt-small",
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
				[1] = "arm-bld-select-medium",
			},
			select = {
				[1] = "arm-bld-select-medium",
			},
		},
	},
}
