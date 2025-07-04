return {
	tllamoho = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 2048,
		buildcostenergy = 29081,
		buildcostmetal = 3455,
		builder = false,
		buildpic = "tllamoho.dds",
		buildtime = 32500,
		canattack = true,
		canstop = 1,
		category = "ALL SURFACE",
		collisionvolumeoffsets = "0 -3 0",
		collisionvolumescales = "75 44 75",
		collisionvolumetype = "CylY",
		corpse = "dead",
		description = "Tech Level 2",
		energyuse = 75,
		explodeas = "SMALL_BUILDINGEX",
		extractsmetal = 0.006,
		firestandorders = 1,
		footprintx = 5,
		footprintz = 5,
		healtime = 16,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 49,
		mass = 3155,
		maxdamage = 5750,
		maxslope = 20,
		maxvelocity = 0,
		maxwaterdepth = 0,
		metalstorage = 500,
		name = "Armed Moho Exploiter",
		noautofire = false,
		objectname = "tll/tllamoho.s3o",
		onoffable = true,
		radaremitheight = 49,
		seismicsignature = 0,
		selfdestructas = "SMALL_BUILDING",
		sightdistance = 500,
		standingfireorder = 2,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0,
		turnrate = 0,
		unitname = "tllamoho",
		yardmap = "ooooooooooooooooooooooooo",
		customparams = {
			buildpic = "tllamoho.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 3061,
				description = "Moho Exploiter Wreckage",
				energy = 0,
				featuredead = "heap",
				footprintx = 5,
				footprintz = 5,
				metal = 2362,
				object = "tll/tllmoho_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 3826,
				description = "Moho Exploiter Debris",
				energy = 0,
				footprintx = 5,
				footprintz = 5,
				metal = 1260,
				object = "5x5a.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		sfxtypes = {
			explosiongenerators = {
				"custom:goliathflare",
			},
			pieceexplosiongenerators = {
				"piecetrail0",
				"piecetrail1",
				"piecetrail2",
				"piecetrail3",
				"piecetrail4",
				"piecetrail6",
			},
		},
		sounds = {
			activate = "mohorun2",
			canceldestruct = "cancel2",
			deactivate = "mohooff2",
			underattack = "warning1",
			working = "mohorun2",
			count = {
				"count6",
				"count5",
				"count4",
				"count3",
				"count2",
				"count1",
			},
			ok = {
				"arm-bld-defense-action-water-t2",
			},
			select = {
				"mohoon2",
			},
		},
		weapondefs = {
			cannon = {
				areaofeffect = 292,
				avoidfeature = false,
				cegtag = "Trail_cannon_med",
				craterareaofeffect = 292,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH96",
				gravityaffected = "TRUE",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Heavy Cannon",
				nogap = 1,
				noselfdamage = true,
				range = 650,
				reloadtime = 2,
				rgbcolor = "0.72 0.4 0",
				separation = 0.45,
				size = 2.9,
				sizedecay = -0.15,
				soundhitdry = "xplomed4",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.6,
				soundstart = "cannhvy2",
				stages = 10,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 350,
				damage = {
					default = 900,
					subs = 5,
				},
				tracks = false,
			},
		},
		weapons = {
			{
				badtargetcategory = "SMALL MINOR",
				def = "CANNON",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}