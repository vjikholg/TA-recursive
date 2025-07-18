return {
	armmuat = {
		acceleration = 0.05,
		bankscale = 1,
		blocking = false,
		brakerate = 0.825,
		buildcostenergy = 65074,
		buildcostmetal = 2912,
		builder = false,
		buildpic = "armmuat.dds",
		buildtime = 80000,
		canattack = true,
		canfly = true,
		canguard = true,
		canload = 1,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL MOBILE VTOL",
		corpse = "heap",
		cruisealt = 110,
		defaultmissiontype = "VTOL_standby",
		description = "Very Heavy Air Transport (until 20K Metal cost unit)",
		explodeas = "BIG_UNITEX",
		firestandorders = 1,
		footprintx = 4,
		footprintz = 4,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 3000,
		losemitheight = 10,
		maneuverleashlength = 1280,
		mass = 2912,
		maxdamage = 17500,
		maxslope = 15,
		maxvelocity = 4,
		maxwaterdepth = 0,
		mintransportmass = 100,
		mobilestandorders = 1,
		name = "Ornith",
		objectname = "arm/armmuat.s3o",
		radardistance = 0,
		radaremitheight = 28.8,
		releaseheld = true,
		selfdestructas = "BIG_UNIT_VTOL",
		sightdistance = 750,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 1,
		transportcapacity = 1,
		transportmass = 20000,
		transportsize = 25,
		turninplaceanglelimit = 360,
		turninplacespeedlimit = 2.64,
		turnrate = 300,
		unitname = "armmuat",
		customparams = {
			buildpic = "armmuat.dds",
			faction = "ARM",
			normaltex = "unittextures/arm_normals.dds",
		},
		featuredefs = {
			heap = {
				blocking = false,
				damage = 19641,
				description = "Aircraft Debris",
				footprintx = 4,
				footprintz = 4,
				metal = 2192,
				object = "4x4z.s3o",
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
				[1] = "arm-air-transport-large-ok",
			},
			select = {
				[1] = "arm-air-transport-large-sel",
			},
		},
		weapondefs = {
			missile_turret = {
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
				metalpershot = 0,
				model = "weapon_missile.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 875,
				reloadtime = 0.3,
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
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 1200,
				damage = {
					areoship = 30,
					default = 5,
					air = 120,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MINOR MAJOR",
				def = "MISSILE_TURRET",
				maindir = "0 1 0",
				maxangledif = 220,
				onlytargetcategory = "VTOL",
			},
		},
	},
}
