return {
	tllmlrpc = {
		acceleration = 0.036,
		brakerate = 0.15,
		buildcostenergy = 70150,
		buildcostmetal = 5390,
		builder = false,
		buildpic = "tllmlrpc.dds",
		buildtime = 85000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL LARGE MOBILE SURFACE UNDERWATER",
		collisionvolumeoffsets = "0 -4 5",
		collisionvolumescales = "62 45 86",
		collisionvolumetype = "box",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Mobile LRPC",
		explodeas = "CRAWL_BLAST",
		firestandorders = 1,
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		losemitheight = 45,
		maneuverleashlength = 640,
		mass = 5390,
		maxdamage = 4960,
		maxslope = 12,
		maxvelocity = 1.2,
		maxwaterdepth = 0,
		mobilestandorders = 1,
		movementclass = "HTANK4",
		name = "Brachiosorus",
		noautofire = false,
		objectname = "tll/tllmlrpc.s3o",
		radardistance = 0,
		radaremitheight = 26,
		selfdestructas = "CRAWL_BLAST",
		sightdistance = 260,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 1,
		trackoffset = 7,
		trackstrength = 8,
		trackstretch = 1,
		tracktype = "StdTank",
		trackwidth = 45,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.792,
		turnrate = 176,
		unitname = "tllmlrpc",
		customparams = {
			buildpic = "tllmlrpc.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 3975,
				description = "Avatar Wreckage",
				featuredead = "heap",
				footprintx = 4,
				footprintz = 4,
				metal = 4125,
				object = "tll/tllmlrpc_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 4969,
				description = "Avatar Debris",
				footprintx = 2,
				footprintz = 2,
				metal = 2200,
				object = "4x4b.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		sfxtypes = {
			explosiongenerators = {
				"custom:lrpt",
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
				"cor-tnk-large-ok",
			},
			select = {
				"cor-tnk-large-sel",
			},
		},
		weapondefs = {
			arm_berthacannon2 = {
				accuracy = 700,
				areaofeffect = 128,
				avoidfeature = false,
				cegtag = "Trail_cannon_med",
				collidefriendly = false,
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				energypershot = 8000,
				explosiongenerator = "custom:flash128_fakelight",
				gravityaffected = "TRUE",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				name = "BerthaCannon",
				nogap = 1,
				noselfdamage = true,
				range = 4000,
				reloadtime = 8,
				rgbcolor = "0.97 0.8 0",
				separation = 0.45,
				size = 2.44,
				sizedecay = -0.15,
				soundhitdry = "xplonuk1",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.6,
				soundstart = "xplonuk4",
				stages = 20,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 1000,
				damage = {
					default = 800,
					subs = 5,
				},
				tracks = false,
			},
		},
		weapons = {
			{
				badtargetcategory = "SMALL MINOR",
				def = "ARM_BERTHACANNON2",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}