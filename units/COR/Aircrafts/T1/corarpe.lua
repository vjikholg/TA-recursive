return {
	corarpe = {
		acceleration = 0.154,
		bankscale = 1,
		blocking = false,
		brakerate = 3.75,
		buildcostenergy = 12225,
		buildcostmetal = 465,
		builder = 0,
		buildpic = "corarpe.dds",
		buildtime = 15000,
		canattack = true,
		canfly = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = true,
		category = "ALL MOBILE VTOL",
		collide = 0,
		cruisealt = 60,
		defaultmissiontype = "VTOL_standby",
		description = "Laser & EMP Gunship",
		energymake = 0,
		energystorage = 0,
		explodeas = "BIG_UNITEX",
		firestandorders = 1,
		footprintx = 2,
		footprintz = 2,
		hoverattack = true,
		icontype = "gunship",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 9,
		maneuverleashlength = 1280,
		mass = 465,
		maxdamage = 1275,
		maxslope = 10,
		maxvelocity = 5,
		maxwaterdepth = 0,
		metalstorage = 0,
		mobilestandorders = 1,
		moverate1 = 3,
		name = "Surveyor",
		noautofire = false,
		objectname = "core/corarpe.s3o",
		scale = 1,
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT",
		shownanospray = false,
		sightdistance = 400,
		smoothanim = 1,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 1,
		turninplaceanglelimit = 360,
		turninplacespeedlimit = 3.3,
		turnrate = 693,
		unitname = "corarpe",
		usesmoothmesh = 0,
		customparams = {
			buildpic = "corarpe.dds",
			faction = "CORE",
			normaltex = "unittextures/core_normals.dds",
		},
		featuredefs = {
			heap = {
				blocking = false,
				damage = 89641,
				description = "Aircraft Debris",
				footprintx = 2,
				footprintz = 2,
				object = "2x2z.s3o",
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
				"cor-air-tiny-ok",
			},
			select = {
				"cor-air-tiny-sel",
			},
		},
		weapondefs = {
			corbladewing_lyzer = {
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
				laserflaresize = 1,
				name = "EMP Laser",
				noselfdamage = true,
				paralyzer = true,
				paralyzetime = 6,
				range = 360,
				reloadtime = 1.25,
				rgbcolor = "0 0 1",
				soundhitdry = "lashit",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "lasrlit1",
				soundtrigger = true,
				targetmoveerror = 0.1,
				thickness = 0.75,
				turret = false,
				tolerance = 6000,
				weapontype = "LaserCannon",
				weaponvelocity = 1000,
				damage = {
					default = 360,
					subs = 5,
				},
				tracks = false,
			},
			gator_laserx = {
				areaofeffect = 15,
				beamtime = 0.1,
				corethickness = 0.175,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				energypershot = 25,
				firestarter = 0,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 1,
				name = "JadeEagle-Laser",
				range = 360,
				reloadtime = 1,
				rgbcolor = "0.000 1.000 0.259",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "Lasrmas2",
				soundtrigger = 1,
				sweepfire = false,
				targetmoveerror = 0.15,
				thickness = 2.5,
				tolerance = 6000,
				turret = false,
				weapontype = "BeamLaser",
				weaponvelocity = 800,
				customparams = {
					light_mult = 1.8,
					light_radius_mult = 1.2,
				},
				damage = {
					commanders = 70,
					default = 140,
					subs = 5,
				},
				tracks = false,
			},
		},
		weapons = {
			{
				def = "GATOR_LASERX",
				onlytargetcategory = "SURFACE",
			},
			{
				def = "corbladewING_LYZER",
				onlytargetcategory = "SURFACE",
			},
			{
				def = "corbladewING_LYZER",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}