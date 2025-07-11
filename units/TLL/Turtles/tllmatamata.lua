return {
	tllmatamata = {
		acceleration = 0.025,
		brakerate = 0.101,
		buildcostenergy = 28557,
		buildcostmetal = 2653,
		builder = false,
		buildpic = "tllmatamata.dds",
		buildtime = 28000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL MEDIUM MOBILE SURFACE UNDERWATER",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Very Heavy Assault Turtle",
		explodeas = "BIG_UNITEX",
		firestandorders = 1,
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 22,
		maneuverleashlength = 640,
		mass = 2653,
		maxdamage = 9550,
		maxslope = 32,
		maxvelocity = 0.75,
		maxwaterdepth = 200,
		mobilestandorders = 1,
		movementclass = "AMPTBOT",
		name = "Matamata",
		noautofire = false,
		objectname = "tll/tllmatamata.s3o",
		radardistance = 0,
		radaremitheight = 25,
		selfdestructas = "BIG_UNIT",
		sightdistance = 450,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 1,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.495,
		turnrate = 530,
		unitname = "tllmatamata",
		customparams = {
			buildpic = "tllmatamata.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 6852,
				description = "Matamata Wreckage",
				featuredead = "heap",
				footprintx = 3,
				footprintz = 3,
				metal = 1987,
				object = "tll/tllturtle_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 8566,
				description = "Matamata Debris",
				footprintx = 3,
				footprintz = 3,
				metal = 1060,
				object = "3x3b.s3o",
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
				stages = 15,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 400,
				damage = {
					default = 900,
					subs = 5,
				},
				tracks = false,
			},
			tlllight_paralyzer = {
				areaofeffect = 8,
				beamtime = 0.1,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.1,
				explosiongenerator = "custom:SMALL_YELLOW_BURN",
				firestarter = 50,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0.5,
				laserflaresize = 1.25,
				name = "EMP Laser",
				noselfdamage = true,
				paralyzer = true,
				paralyzetime = 6,
				range = 450,
				reloadtime = 0.3,
				rgbcolor = "0 0 7",
				soundhitdry = "lashit",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "lasrlit1",
				soundtrigger = true,
				targetmoveerror = 0.1,
				thickness = 0.75,
				turret = true,
				weapontype = "LaserCannon",
				weaponvelocity = 1000,
				damage = {
					default = 720,
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
			[3] = {
				badtargetcategory = "LARGE HUGE",
				def = "TLLLIGHT_PARALYZER",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}