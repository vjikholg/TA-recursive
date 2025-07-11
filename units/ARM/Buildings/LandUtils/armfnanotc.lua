return {
	armfnanotc = {
		acceleration = 0,
		brakerate = 4.5,
		buildcostenergy = 9610,
		buildcostmetal = 280,
		builddistance = 500,
		builder = true,
		buildpic = "armfnanotc.dds",
		buildtime = 5000,
		canguard = true,
		canmove = false,
		canpatrol = true,
		canreclamate = 1,
		canstop = 1,
		cantbetransported = true,
		category = "ALL SURFACE UNDERWATER",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "31 32 31",
		collisionvolumetype = "CylY",
		defaultmissiontype = "Standby",
		description = "Repairs and builds in large radius",
		explodeas = "NANOBOOM2A",
		floater = true,
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 23,
		maneuverleashlength = 380,
		mass = 320,
		maxdamage = 400,
		maxslope = 10,
		maxvelocity = 0,
		minwaterdepth = 5,
		name = "Nano Turret Level 1",
		noautofire = false,
		objectname = "core/corfnanotc.s3o",
		radaremitheight = 25,
		reclaimspeed = 125,
		repairspeed = 125,
		script = "corfnanotc.cob",
		seismicsignature = 0,
		selfdestructas = "NANOBOOM2A",
		shownanospray = false,
		sightdistance = 250,
		steeringmode = 1,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0,
		turnrate = 1,
		unitname = "armfnanotc",
		upright = true,
		waterline = 1,
		workertime = 250,
		customparams = {
			buildpic = "armfnanotc.dds",
			faction = "ARM",
		},
		nanocolor = {
			[1] = 0.2,
			[2] = 0.6,
			[3] = 0.2,
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
			repair = "conalt-small",
			underattack = "warning1",
			working = "reclaim1",
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
				[1] = "cmd-repair",
			},
			select = {
				[1] = "arm-bld-select-small",
			},
		},
	},
}