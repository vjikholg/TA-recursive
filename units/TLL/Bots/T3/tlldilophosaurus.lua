return {
	tlldilophosaurus = {
		acceleration = 0.08,
		airsightdistance = 1200,
		brakerate = 0.494,
		buildcostenergy = 61041,
		buildcostmetal = 6565,
		buildpic = "tlldilophosaurus.dds",
		buildtime = 100000,
		canmove = true,
		category = "ALL LARGE MOBILE SURFACE UNDERWATER",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "81 81 51",
		collisionvolumetype = "box",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Swimming very Heavy Anti-Air Kbot",
		explodeas = "BIG_UNITEX",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 65,
		maneuverleashlength = 640,
		mass = 6565,
		maxdamage = 12875,
		maxvelocity = 1.75,
		movementclass = "HOVER4",
		name = "Dilophosaurus",
		objectname = "tll/tlldilophosaurus.s3o",
		radaremitheight = 60,
		selfdestructas = "CRAWL_BLASTSML",
		sightdistance = 390,
		steeringmode = 2,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.99,
		turnrate = 620,
		unitname = "tlldilophosaurus",
		upright = true,
		customparams = {
			buildpic = "tlldilophosaurus.dds",
			faction = "TLL",
			prioritytarget = "air",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				collisionvolumeoffsets = "1 -2 -5",
				collisionvolumescales = "38 17 34",
				collisionvolumetype = "Box",
				damage = 6439,
				description = "Dilophosaurus Wreckage",
				energy = 0,
				featuredead = "heap",
				footprintx = 4,
				footprintz = 4,
				metal = 6480,
				object = "tll/tlldilophosaurus_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 5795,
				description = "Dilophosaurus Debris",
				energy = 0,
				footprintx = 4,
				footprintz = 4,
				metal = 3256,
				object = "4x4a.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		sfxtypes = {
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
				"leg-bot-medium-ok",
			},
			select = {
				"leg-bot-medium-sel",
			},
		},
		weapondefs = {
			aa_starburst = {
				areaofeffect = 48,
				avoidfeature = false,
				canattackground = false,
				cegtag = "Tll_Def_AA_Rocket",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH2",
				firestarter = 70,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "weapon_missile.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 1000,
				reloadtime = 0.2,
				smoketrail = true,
				soundhitdry = "xplomed2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.6,
				soundstart = "rockhvy2",
				startvelocity = 600,
				texture1 = "null",
				texture2 = "armsmoketrail",
				texture3 = "null",
				texture4 = "null",
				tolerance = 90000,
				tracks = false,
				turnrate = 50000,
				turret = true,
				weaponacceleration = 200,
				weapontimer = 0.35,
				weapontype = "StarburstLauncher",
				weaponvelocity = 1200,
				damage = {
					areoship = 25,
					default = 5,
					air = 100,
				},
			},
			miniflak = {
				accuracy = 1000,
				areaofeffect = 140,
				avoidfeature = false,
				burnblow = true,
				canattackground = false,
				cegtag = "tllflak-fx",
				craterareaofeffect = 288,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.85,
				explosiongenerator = "custom:FLASHSMALLBUILDINGEX",
				gravityaffected = true,
				impulseboost = 0,
				impulsefactor = 0,
				name = "FlakCannon",
				noselfdamage = true,
				range = 775,
				reloadtime = 0.5,
				rgbcolor = "1.0 0.5 0.0",
				soundhitdry = "flakhit",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.6,
				soundstart = "flakfire",
				turret = true,
				weapontimer = 1,
				weapontype = "Cannon",
				weaponvelocity = 1550,
				damage = {
					areoship = 62.5,
					default = 5,
					air = 250,
				},
				tracks = false,
			},
			tll_lightning = {
				areaofeffect = 10,
				beamttl = 10,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 1,
				energypershot = 50,
				explosiongenerator = "custom:tll_spray_exp",
				firestarter = 50,
				impulseboost = 0,
				impulsefactor = 0,
				impactonly = true,
				name = "Spray Lightning",
				noselfdamage = true,
				range = 380,
				reloadtime = 1,
				rgbcolor = "0.9 0.9 0.2",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "lppc1",
				texture1 = "spray",
				thickness = 8,
				turret = true,
				weapontype = "LightningCannon",
				customparams = {
					light_mult = 1.4,
					light_radius_mult = 0.9,
				},
				damage = {
					default = 250,
					subs = 5,
				},
				tracks = false,
			},
		},
		weapons = {
			{
				def = "TLL_LIGHTNING",
				maindir = "1 0 1",
				maxangledif = 100,
				onlytargetcategory = "SURFACE",
			},
			{
				def = "TLL_LIGHTNING",
				maindir = "-1 0 1",
				maxangledif = 100,
				onlytargetcategory = "SURFACE",
			},
			{
				def = "TLL_LIGHTNING",
				maindir = "0 0 -1",
				maxangledif = 220,
				onlytargetcategory = "SURFACE",
			},
			{
				badtargetcategory = "MINOR MAJOR",
				def = "MINIFLAK",
				onlytargetcategory = "VTOL",
			},
			{
				badtargetcategory = "MINOR MAJOR",
				def = "AA_STARBURST",
				onlytargetcategory = "VTOL",
			},
		},
	},
}