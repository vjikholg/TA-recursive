return {
	tllmex1 = {
		activatewhenbuilt = true,
		buildangle = 8192,
		buildcostenergy = 2221,
		buildcostmetal = 289,
		builder = false,
		buildpic = "tllmex1.dds",
		buildtime = 5000,
		category = "ALL UNDERWATER SURFACE",
		collisionvolumeoffsets = "0 12 -7",
		collisionvolumescales = "46 42 46",
		collisionvolumetype = "CylY",
		corpse = "dead",
		description = "Tech Level 1 (Amphibious)",
		digger = 1,
		energyuse = 15,
		explodeas = "SMALL_BUILDINGEX",
		extractsmetal = 0.00175,
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 61,
		mass = 289,
		maxdamage = 260,
		maxslope = 20,
		maxwaterdepth = 9999,
		metalstorage = 25,
		name = "Advanced Metal Extractor",
		noautofire = false,
		objectname = "tll/tllmex1.s3o",
		onoffable = true,
		radaremitheight = 70,
		selfdestructas = "SMALL_BUILDING",
		sightdistance = 210,
		unitname = "tllmex1",
		yardmap = "ooooooooo",
		customparams = {
			buildpic = "tllmex1.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 973,
				description = "Metal Extractor Wreckage",
				featuredead = "heap",
				footprintx = 3,
				footprintz = 3,
				metal = 339,
				object = "tll/tllmex_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 1217,
				description = "Metal Extractor Debris",
				footprintx = 3,
				footprintz = 3,
				metal = 181,
				object = "3x3f.s3o",
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
			activate = "mexon2",
			canceldestruct = "cancel2",
			deactivate = "mexoff2",
			underattack = "warning1",
			working = "mexrun2",
			count = {
				[1] = "tllcount",
				[2] = "tllcount",
				[3] = "tllcount",
				[4] = "tllcount",
				[5] = "tllcount",
				[6] = "tllcount",
			},
			select = {
				[1] = "mexon2",
			},
		},
	},
}
