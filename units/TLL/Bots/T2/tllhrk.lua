return {
	tllhrk = {
		acceleration = 0.11,
		brakerate = 0.45,
		buildcostenergy = 4500,
		buildcostmetal = 791,
		builder = false,
		buildpic = "tllhrk.dds",
		buildtime = 10000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL MEDIUM MOBILE SURFACE UNDERWATER",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "All-Terrain Missile Launcher",
		downloadable = 1,
		explodeas = "BIG_UNITEX",
		firestandorders = 1,
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 22,
		maneuverleashlength = 640,
		mass = 791,
		maxdamage = 655,
		maxslope = 14,
		maxvelocity = 1.2,
		maxwaterdepth = 21,
		mobilestandorders = 1,
		movementclass = "TKBOT3",
		name = "Rlik",
		noautofire = false,
		objectname = "tll/tllhrk.s3o",
		radardistance = 0,
		radaremitheight = 25,
		selfdestructas = "BIG_UNIT",
		sightdistance = 380,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 2,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.792,
		turnrate = 658,
		unitname = "tllhrk",
		upright = false,
		customparams = {
			buildpic = "tllhrk.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 870,
				description = "Rlik Wreckage",
				featuredead = "heap",
				footprintx = 2,
				footprintz = 2,
				metal = 592,
				object = "tll/tllhrk_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 1088,
				description = "Rlik Debris",
				footprintx = 2,
				footprintz = 2,
				metal = 316,
				object = "2x2a.s3o",
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
				"leg-bot-small-ok",
			},
			select = {
				"leg-bot-small-sel",
			},
		},
		weapondefs = {
			corhrk_rocket = {
				areaofeffect = 60,
				avoidfeature = false,
				cegtag = "tll_trail_rocket",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.5,
				explosiongenerator = "custom:incendiary_explosion_small",
				firestarter = 100,
				flighttime = 10,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "weapon_starburstm.s3o",
				name = "Heavy Rocket",
				noselfdamage = true,
				range = 1350,
				reloadtime = 7,
				smoketrail = false,
				soundhitdry = "vpulsehit",
				soundhitwet = "splssml",
				soundhitwetvolume = 0.6,
				soundstart = "vpulsefire",
				targetable = 16,
				texture1 = "null",
				texture2 = "null",
				texture3 = "null",
				texture4 = "null",
				turnrate = 24384,
				weaponacceleration = 100,
				weapontimer = 4,
				weapontype = "StarburstLauncher",
				weaponvelocity = 800,
				customparams = {
					light_color = "1 0.6 0.15",
					light_mult = 3.3,
					light_radius_mult = 1.9,
				},
				damage = {
					commanders = 350,
					default = 700,
					subs = 5,
				},
				tracks = false,
			},
		},
		weapons = {
			{
				badtargetcategory = "MOBILE",
				def = "CORHRK_ROCKET",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}