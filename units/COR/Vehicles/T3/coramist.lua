return {
	coramist = {
		airsightdistance = 1200,
		acceleration = 0.05,
		activatewhenbuilt = true,
		brakerate = 0.138,
		buildcostenergy = 57840,
		buildcostmetal = 3450,
		builder = false,
		buildpic = "coramist.dds",
		buildtime = 50000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL LARGE MOBILE SURFACE UNDERWATER",
		collisionvolumeoffsets = "0 -2 0",
		collisionvolumescales = "57 40 60",
		collisionvolumetype = "box",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Very Heavy Anti-Air Missile Vehicle",
		downloadable = 1,
		explodeas = "BIG_UNIT",
		firestandorders = 1,
		footprintx = 4,
		footprintz = 4,
		hidedamage = false,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 26,
		maneuverleashlength = 1200,
		mass = 3450,
		maxdamage = 6115,
		maxslope = 18,
		maxvelocity = 2,
		maxwaterdepth = 12,
		mobilestandorders = 1,
		movementclass = "htank4",
		name = "Covid",
		objectname = "core/coramist.s3o",
		radaremitheight = 30,
		selfdestructas = "BIG_UNIT",
		sightdistance = 350,
		steeringmode = 2,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.122,
		turnrate = 225,
		unitname = "coramist",
		upright = false,
		customparams = {
			buildpic = "coramist.dds",
			faction = "CORE",
			prioritytarget = "air",
			normaltex = "unittextures/core_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 14561,
				description = "Covid Wreckage",
				featuredead = "heap",
				footprintx = 4,
				footprintz = 4,
				metal = 7960,
				object = "core/coramist_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 5588,
				description = "Covid Debris",
				footprintx = 2,
				footprintz = 2,
				metal = 936,
				object = "4x4f.s3o",
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
				[1] = "cor-tnk-large-ok",
			},
			select = {
				[1] = "cor-tnk-large-sel",
			},
		},
		weapondefs = {
			missile = {
				areaofeffect = 48,
				avoidfeature = false,
				canattackground = false,
				cegtag = "Core_Def_AA_Rocket",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:none",
				firestarter = 70,
				flighttime = 1.5,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "weapon_missile.s3o",
				name = "Long-Range Missiles",
				noselfdamage = true,
				range = 1250,
				reloadtime = 0.15,
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
				weapontype = "MissileLauncher",
				weaponvelocity = 1200,
				damage = {
					areoship = 37.5,
					default = 5,
					air = 150,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MINOR MAJOR", --Ground AA
				def = "MISSILE",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
