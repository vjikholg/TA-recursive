return {
	tllhoverlight = {
		acceleration = 0.15,
		brakerate = 0.15,
		buildcostenergy = 794,
		buildcostmetal = 105,
		builder = false,
		buildpic = "tllhoverlight.dds",
		buildtime = 2000,
		canattack = true,
		canguard = true,
		canhover = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL MOBILE MINOR SURFACE",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "MINOR Hovercraft",
		downloadable = 1,
		explodeas = "BIG_UNITEX",
		firestandorders = 1,
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 22,
		maneuverleashlength = 640,
		mass = 105,
		maxdamage = 280,
		maxslope = 16,
		maxvelocity = 4,
		maxwaterdepth = 0,
		mobilestandorders = 1,
		movementclass = "TANKHOVER3",
		name = "Fox",
		noautofire = false,
		objectname = "tll/tllhoverlight.s3o",
		radaremitheight = 25,
		selfdestructas = "BIG_UNIT",
		sightdistance = 550,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 1,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 2.508,
		turnrate = 600,
		unitname = "tllhoverlight",
		customparams = {
			buildpic = "tllhoverlight.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 371,
				description = "Fox Wreckage",
				featuredead = "heap",
				footprintx = 3,
				footprintz = 3,
				metal = 56,
				object = "tll/tllhoverlight_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 463,
				description = "Fox Debris",
				footprintx = 3,
				footprintz = 3,
				metal = 30,
				object = "3x3a.s3o",
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
				"cor-hov-small-ok",
			},
			select = {
				"cor-hov-small-sel",
			},
		},
		weapondefs = {
			armsh_weapon = {
				areaofeffect = 8,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.08,
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
				range = 180,
				reloadtime = 1,
				rgbcolor = "0 0 1",
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
					default = 360,
					subs = 5,
				},
				tracks = false,
			},
		},
		weapons = {
			{
				def = "ARMSH_WEAPON",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}