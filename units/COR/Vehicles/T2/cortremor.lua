return {
	cortremor = {
		acceleration = 0.0528,
		brakerate = 0.33,
		buildcostenergy = 36072,
		buildcostmetal = 2452,
		builder = false,
		buildpic = "cortremor.dds",
		buildtime = 35000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL MEDIUM MOBILE SURFACE UNDERWATER",
		collisionvolumeoffsets = "0 -5 -3",
		collisionvolumescales = "29 59 46",
		collisionvolumetype = "Box",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Heavy Artillery Vehicle",
		explodeas = "BIG_UNIT",
		firestandorders = 1,
		footprintx = 4,
		footprintz = 4,
		hightrajectory = 1,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		losemitheight = 55,
		maneuverleashlength = 640,
		mass = 2452,
		maxdamage = 3445,
		maxslope = 14,
		maxvelocity = 1.3,
		maxwaterdepth = 15,
		mobilestandorders = 1,
		movementclass = "TANK4",
		name = "Tremor",
		noautofire = false,
		objectname = "core/cortremor.s3o",
		radaremitheight = 55,
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT",
		sightdistance = 350,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 1,
		trackoffset = -8,
		trackstrength = 8,
		trackstretch = 1,
		tracktype = "StdTank",
		trackwidth = 28,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.924,
		turnrate = 175,
		unitname = "cortremor",
		customparams = {
			buildpic = "cortremor.dds",
			faction = "CORE",
			normaltex = "unittextures/core_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "55 42 61",
				collisionvolumetype = "Box",
				damage = 2689,
				description = "cortremoror Wreckage",
				energy = 0,
				featuredead = "heap",
				footprintx = 2,
				footprintz = 2,
				metal = 1567,
				object = "core/cortremor_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 3361,
				description = "cortremoror Debris",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				metal = 836,
				object = "2x2b.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		sfxtypes = {
			explosiongenerators = {
				"custom:MEDIUMFLARE",
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
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				"cantdo4",
			},
			count = {
				"count6",
				"count5",
				"count4",
				"count3",
				"count2",
				"count1",
			},
			ok = {
				"cor-tnk-medium-ok",
			},
			select = {
				"cor-tnk-medium-sel",
			},
		},
		weapondefs = {
			cortremoror_weapon = {
				accuracy = 875,
				areaofeffect = 192,
				avoidfeature = false,
				cegtag = "Trail_cannon_med",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH4",
				gravityaffected = "TRUE",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "RapidArtillery",
				nogap = 1,
				noselfdamage = true,
				proximitypriority = -3,
				range = 1500,
				reloadtime = 0.4,
				rgbcolor = "0.7 0.37 0",
				separation = 0.45,
				size = 2.26,
				sizedecay = -0.15,
				soundhitdry = "xplomed4",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.6,
				soundstart = "cannhvy2",
				stages = 20,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 425,
				damage = {
					default = 300,
					subs = 5,
				},
				tracks = false,
			},
		},
		weapons = {
			{
				def = "cortremorOR_WEAPON",
				maindir = "0 0 1",
				maxangledif = 270,
				onlytargetcategory = "SURFACE",
			},
		},
	},
}