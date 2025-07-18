return {
	armmcv = {
		acceleration = 0.07,
		activatewhenbuilt = true,
		amphibious = 1,
		brakerate = 0.18,
		buildcostenergy = 178089,
		buildcostmetal = 9210,
		builder = false,
		buildpic = "armmcv.dds",
		buildtime = 170000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL LARGE MOBILE SURFACE UNDERWATER",
		collisionvolumeoffsets = "0 -10 0",
		collisionvolumescales = "65 65 90",
		collisionvolumetype = "box",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Heavy Artillery Vehicle (Amphibious)",
		downloadable = 1,
		explodeas = "CRAW_BLAST",
		firestandorders = 1,
		footprintx = 5,
		footprintz = 5,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 34,
		maneuverleashlength = 640,
		mass = 9210,
		maxdamage = 38150,
		maxslope = 12,
		maxvelocity = 1.2,
		maxwaterdepth = 12,
		mobilestandorders = 1,
		movementclass = "HTANK5",
		name = "Kronos",
		noautofire = false,
		objectname = "arm/armmcv.s3o",
		onoffable = true,
		radaremitheight = 38,
		selfdestructas = "BANTHA_BLAST",
		selfdestructcountdown = 10,
		sightdistance = 500,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 1,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.8,
		turnrate = 160,
		unitname = "armmcv",
		customparams = {
			buildpic = "armmcv.dds",
			faction = "ARM",
			normaltex = "unittextures/arm_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 23165,
				description = "Kronos Wreckage",
				featuredead = "heap",
				footprintx = 5,
				footprintz = 5,
				metal = 7200,
				object = "arm/armmcv_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 28956,
				description = "Kronos Debris",
				footprintx = 5,
				footprintz = 5,
				metal = 3840,
				object = "5x5c.s3o",
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
				"arm-tnk-large-ok",
			},
			select = {
				"arm-tnk-large-sel",
			},
		},
		weapondefs = {
			arm_batsaftx = {
				accuracy = 350,
				areaofeffect = 96,
				avoidfeature = false,
				cegtag = "Trail_cannon_med",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASHSMALLUNIT",
				gravityaffected = "TRUE",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "BattleShipCannon",
				nogap = 1,
				noselfdamage = true,
				range = 1400,
				reloadtime = 0.75,
				rgbcolor = "0.86 0.62 0",
				separation = 0.45,
				size = 1.82,
				sizedecay = -0.15,
				soundhitdry = "xplomed2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.6,
				soundstart = "cannhvy1",
				stages = 20,
				tolerance = 5000,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 470,
				damage = {
					default = 225,
					subs = 5,
				},
				tracks = false,
			},
			rave_missile = {
				acceleration = 0.3,
				areaofeffect = 96,
				avoidfeature = false,
				cegtag = "Arm_titan_trail",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:Explosion_Medium_VLight",
				firestarter = 70,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "titan_missile.s3o",
				name = "Mini-Rocket",
				noselfdamage = true,
				proximitypriority = -1,
				range = 900,
				reloadtime = 1,
				smoketrail = true,
				soundhitdry = "xplosml2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.6,
				soundstart = "rocklit1",
				startvelocity = 220,
				targetable = 16,
				texture1 = "null",
				texture2 = "null",
				texture3 = "null",
				texture4 = "null",
				tolerance = 9000,
				tracks = false,
				turnrate = 35000,
				weaponacceleration = 150,
				weapontimer = 0.6,
				weapontype = "StarburstLauncher",
				weaponvelocity = 2100,
				damage = {
					default = 150,
					subs = 5,
				},
			},
		},
		weapons = {
			{
				badtargetcategory = "MINOR",
				def = "ARM_BATSAFTX",
				maindir = "0 0 1",
				maxangledif = 270,
				onlytargetcategory = "SURFACE",
			},
			{
				badtargetcategory = "MINOR",
				def = "ARM_BATSAFTX",
				onlytargetcategory = "SURFACE",
			},
			{
				def = "RAVE_MISSILE",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}