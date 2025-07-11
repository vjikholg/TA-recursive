return {
	tllanhur = {
		acceleration = 0.03594,
		blocking = false,
		brakerate = 0.015,
		buildcostenergy = 112500,
		buildcostmetal = 4075,
		builder = false,
		buildpic = "tllanhur.dds",
		buildtime = 60000,
		canattack = true,
		canfly = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL MOBILE VTOL",
		collide = false,
		corpse = "heap",
		cruisealt = 220,
		decloakonfire = true,
		decloakspherical = true,
		defaultmissiontype = "VTOL_standby",
		description = "Heavy EMP Bomber",
		explodeas = "BIG_UNITEX",
		footprintx = 4,
		footprintz = 4,
		icontype = "air",
		idleautoheal = 1,
		idletime = 2200,
		losemitheight = 23.5,
		mass = 4075,
		maxdamage = 6150,
		maxslope = 30,
		maxvelocity = 10,
		maxwaterdepth = 0,
		mobilestandorders = 1,
		name = "Anhur",
		noautofire = false,
		objectname = "tll/tllanhur.s3o",
		selfdestructas = "BIG_UNIT_VTOL",
		sightdistance = 400,
		standingmoveorder = 1,
		stealth = true,
		steeringmode = 1,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 6.6,
		turnrate = 140,
		unitname = "tllanhur",
		customparams = {
			buildpic = "tllanhur.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			heap = {
				blocking = false,
				damage = 39641,
				description = "Aircraft Debris",
				footprintx = 4,
				footprintz = 4,
				metal = 2213,
				object = "4x4z.s3o",
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
				"arm-air-large-ok",
			},
			select = {
				"arm-air-large-sel",
			},
		},
		weapondefs = {
			emp_bomb = {
				areaofeffect = 200,
				avoidfeature = false,
				burst = 16,
				burstrate = 0.15,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				collidefriendly = false,
				commandfire = false,
				edgeeffectiveness = 0.75,
				explosiongenerator = "custom:EMPFLASH240",
				firestarter = 90,
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				interceptedbyshieldtype = 16,
				model = "weapon_bomb.s3o",
				name = "EMP bomb",
				noselfdamage = true,
				paralyzer = true,
				paralyzetime = 18,
				range = 1280,
				reloadtime = 20,
				soundhitdry = "EMGPULS1",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.6,
				soundstart = "bombrel",
				sprayangle = 15000,
				tolerance = 7000,
				weapontype = "AircraftBomb",
				damage = {
					commanders = 2500,
					default = 5000,
					subs = 5,
				},
			},
		},
		weapons = {
			{
				def = "EMP_BOMB",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
