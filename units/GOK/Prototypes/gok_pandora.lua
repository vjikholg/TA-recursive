return {
	gok_pandora = {
		airsightdistance = 1250,
		acceleration = 0.12,
		activatewhenbuilt = true,
		brakerate = 2.97,
		buildcostenergy = 540030,
		buildcostmetal = 28850,
		builder = false,
		buildpic = "gok_pandora.dds",
		buildtime = 1250000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL HUGE MOBILE SURFACE UNDERWATER",
		collisionvolumeoffsets = "0 -10 0",
		collisionvolumescales = "96 102 96",
		collisionvolumetype = "CylZ",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Ultimate Anti-Air Pod",
		explodeas = "BANTHA_BLAST",
		firestandorders = 1,
		footprintx = 6,
		footprintz = 6,
		idleautoheal = 5,
		idletime = 30,
		losemitheight = 88,
		maneuverleashlength = 1250,
		mass = 28850,
		maxdamage = 60050,
		maxslope = 36,
		maxvelocity = 1.25,
		maxwaterdepth = 36,
		mobilestandorders = 1,
		movementclass = "HKBOT6",
		name = "Pandora",
		noautofire = false,
		objectname = "gok/gok_pandora.s3o",
		radaremitheight = 76,
		selfdestructas = "KROG_BLAST",
		selfdestructcountdown = 10,
		sightdistance = 650,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 2,
		threed = 1,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.8,
		turnrate = 225,
		unitname = "gok_pandora",
		upright = true,
		customparams = {
			buildpic = "gok_pandora.dds",
			faction = "GOK",
			prioritytarget = "air",
			normaltex = "unittextures/gok_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = false,
				damage = 33488,
				description = "Gold Wreckage",
				energy = 0,
				featuredead = "heap",
				footprintx = 6,
				footprintz = 6,
				metal = 14400,
				object = "gok/gok_pandora_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 41860,
				description = "Gold Mech Debris",
				energy = 0,
				footprintx = 6,
				footprintz = 6,
				metal = 7680,
				object = "6x6a.s3o",
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
			canceldestruct = "cancel2",
			underattack = "warning1",
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
				[1] = "kbcormov",
			},
			select = {
				[1] = "kbcorsel",
			},
		},
		weapondefs = {
			flak = {
				accuracy = 500,
				areaofeffect = 256,
				avoidfeature = false,
				burnblow = true,
				cegtag = "gokflak-fx",
				craterareaofeffect = 384,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.75,
				explosiongenerator = "custom:FLASH3",
				gravityaffected = "TRUE",
				impulseboost = 0,
				impulsefactor = 0,
				name = "Ultimate Flak Cannon",
				noselfdamage = true,
				range = 1250,
				reloadtime = 0.25,
				rgbcolor = "0.2 0.3 0.9",
				soundhitdry = "flakhit",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.6,
				soundstart = "flakfire",
				turret = true,
				weapontimer = 1,
				weapontype = "Cannon",
				weaponvelocity = 2000,
				damage = {
					areoship = 210,
					default = 5,
					air = 840,
				},
			},
			missile = {
				areaofeffect = 24,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:none",
				firestarter = 70,
				flighttime = 1.5,
				impulseboost = 0,
				impulsefactor = 0,
				model = "weapon_missile.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 1250,
				reloadtime = 0.1,
				rgbcolor = "1.000 0.000 0.000",
				smoketrail = false,
				soundhitdry = "xplosml2",
				soundhitvolume = 7.5,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.6,
				soundstart = "rocklit1",
				soundstartvolume = 7.5,
				startvelocity = 600,
				texture2 = "coresmoketrail",
				tracks = true,
				turnrate = 36000,
				turret = true,
				weaponacceleration = 200,
				weapontimer = 2,
				weapontype = "MissileLauncher",
				weaponvelocity = 1200,
				damage = {
					areoship = 25,
					default = 5,
					air = 100,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MINOR MAJOR", --Ground AA
				def = "FLAK",
				onlytargetcategory = "VTOL",
			},
			[2] = {
				badtargetcategory = "MINOR MAJOR", --Ground AA
				def = "MISSILE",
				onlytargetcategory = "VTOL",
			},
			[3] = {
				badtargetcategory = "MINOR MAJOR", --Ground AA
				def = "MISSILE",
				onlytargetcategory = "VTOL",
				slaveTo = 2,
			},
		},
	},
}
