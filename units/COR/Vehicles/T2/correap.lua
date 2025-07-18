return {
	correap = {
		acceleration = 0.044,
		brakerate = 0.198,
		buildcostenergy = 10096,
		buildcostmetal = 691,
		builder = false,
		buildpic = "correap.dds",
		buildtime = 13530,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL MEDIUM MOBILE SURFACE UNDERWATER",
		collisionvolumeoffsets = "0 -6 0",
		collisionvolumescales = "34 34 38",
		collisionvolumetype = "CylZ",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Heavy Assault Tank",
		explodeas = "BIG_UNITEX",
		firestandorders = 1,
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		losemitheight = 22,
		maneuverleashlength = 640,
		mass = 691,
		maxdamage = 4950,
		maxslope = 12,
		maxvelocity = 2.4,
		maxwaterdepth = 100,
		mobilestandorders = 1,
		movementclass = "HTANK3",
		name = "Reaper",
		noautofire = false,
		objectname = "core/correap.s3o",
		radaremitheight = 25,
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT",
		sightdistance = 450,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 1,
		trackoffset = 8,
		trackstrength = 8,
		trackstretch = 1,
		tracktype = "StdTank",
		trackwidth = 33,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.518,
		turnrate = 434,
		unitname = "correap",
		customparams = {
			buildpic = "correap.dds",
			faction = "CORE",
			normaltex = "unittextures/core_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				collisionvolumeoffsets = -0.1718,
				collisionvolumescales = "37.7348022461 25.9745025635 40.3383178711",
				collisionvolumetype = "Box",
				damage = 4442,
				description = "Reaper Wreckage",
				energy = 0,
				featuredead = "heap",
				footprintx = 3,
				footprintz = 3,
				metal = 476,
				object = "core/correap_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 5552,
				description = "Reaper Debris",
				energy = 0,
				footprintx = 3,
				footprintz = 3,
				metal = 254,
				object = "3x3c.s3o",
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
			core_reap = {
				areaofeffect = 64,
				avoidfeature = false,
				cegtag = "Trail_cannon",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH72",
				gravityaffected = "TRUE",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "PlasmaCannon",
				nogap = 1,
				noselfdamage = true,
				range = 410,
				reloadtime = 0.75,
				rgbcolor = "0.77 0.48 0",
				separation = 0.45,
				size = 1.53,
				sizedecay = -0.15,
				soundhitdry = "xplomed2",
				soundhitwet = "splssml",
				soundhitwetvolume = 0.6,
				soundstart = "cannon3",
				stages = 20,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 380,
				damage = {
					default = 105,
					subs = 5,
				},
				tracks = false,
			},
		},
		weapons = {
			{
				def = "CORE_REAP",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}