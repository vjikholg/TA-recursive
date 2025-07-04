return {
	tllabomber = {
		acceleration = 0.0179,
		altfromsealevel = 1,
		attackrunlength = 220,
		bankscale = 1,
		blocking = false,
		brakerate = 0.03,
		buildcostenergy = 11374,
		buildcostmetal = 425,
		builder = false,
		buildpic = "tllabomber.dds",
		buildtime = 20000,
		canattack = true,
		canfly = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL MOBILE VTOL",
		collide = false,
		corpse = "heap",
		cruisealt = 185,
		defaultmissiontype = "VTOL_standby",
		description = "Strategic Bomber",
		explodeas = "BIG_UNITEX",
		firestandorders = 1,
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 10,
		maneuverleashlength = 1280,
		mass = 425,
		maxdamage = 1455,
		maxslope = 10,
		maxvelocity = 9,
		maxwaterdepth = 0,
		mobilestandorders = 1,
		name = "Ghost",
		noautofire = false,
		objectname = "tll/tllabomber.s3o",
		selfdestructas = "BIG_UNIT_VTOL",
		sightdistance = 350,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 1,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 6.27,
		turnrate = 245,
		unitname = "tllabomber",
		customparams = {
			buildpic = "tllabomber.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			heap = {
				blocking = false,
				damage = 9641,
				description = "Aircraft Debris",
				footprintx = 4,
				footprintz = 4,
				metal = 203,
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
			underattack = "tllwarning",
			arrived = {
				"tllvtolstop3",
			},
			cant = {
				"cantdo4",
			},
			count = {
				"tllcount",
				"tllcount",
				"tllcount",
				"tllcount",
				"tllcount",
				"tllcount",
			},
			ok = {
				"arm-air-medium-ok",
			},
			select = {
				"arm-air-medium-sel",
			},
		},
		weapondefs = {
			coradvbomb = {
				areaofeffect = 196,
				avoidfeature = false,
				burst = 10,
				burstrate = 0.2,
				collidefriendly = false,
				commandfire = false,
				craterareaofeffect = 196,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.7,
				explosiongenerator = "custom:CORE_BIGBOMB_EXPLOSION",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				interceptedbyshieldtype = 16,
				model = "weapon_bomb.s3o",
				name = "AdvancedBombs",
				noselfdamage = true,
				range = 1280,
				reloadtime = 10,
				soundhitdry = "xplomed2",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.6,
				soundstart = "bombrel",
				weapontype = "AircraftBomb",
				damage = {
					commanders = 130,
					default = 260,
					subs = 5,
				},
				tracks = false,
			},
		},
		weapons = {
			{
				def = "CORADVBOMB",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}