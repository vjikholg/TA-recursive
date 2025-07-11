return {
	corkrogtaar = {
		acceleration = 0.125,
		brakerate = 0.7,
		buildcostenergy = 70233,
		buildcostmetal = 4873,
		builder = false,
		buildpic = "corkrogtaar.dds",
		buildtime = 55000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL HUGE MOBILE SURFACE UNDERWATER",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Very Heavy Assault Mech",
		explodeas = "CRAWL_BLASTSML",
		firestandorders = 1,
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 56,
		maneuverleashlength = 640,
		mass = 5175,
		maxdamage = 22500,
		maxslope = 17,
		maxvelocity = 1.45,
		maxwaterdepth = 13,
		mobilestandorders = 1,
		movementclass = "HKBOT4",
		name = "KrogTaar",
		noautofire = false,
		objectname = "core/corkrogtaar.s3o",
		radardistance = 0,
		radaremitheight = 56,
		selfdestructas = "CRAWL_BLAST",
		selfdestructcountdown = 10,
		sightdistance = 390,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 2,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.957,
		turnrate = 650,
		unitname = "corkrogtaar",
		upright = true,
		customparams = {
			buildpic = "corkrogtaar.dds",
			faction = "CORE",
			normaltex = "unittextures/core_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				collisionvolumeoffsets = "0.543556213379 0.108607275391 -1.27166748047",
				collisionvolumescales = "67.5281219482 32.0374145508 71.4806213379",
				collisionvolumetype = "Box",
				damage = 16283,
				description = "KrogTaar Wreckage",
				featuredead = "heap",
				footprintx = 3,
				footprintz = 3,
				metal = 4612,
				object = "core/corkrogtaar_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 20354,
				description = "KrogTaar Debris",
				footprintx = 3,
				footprintz = 3,
				metal = 2460,
				object = "3x3a.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		sfxtypes = {
			explosiongenerators = {
				"custom:armorco_muzzle",
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
				"cor-bot-medium-ok",
			},
			select = {
				"cor-bot-medium-sel",
			},
		},
		weapondefs = {
			core_blaster = {
				accuracy = 200,
				areaofeffect = 64,
				avoidfeature = false,
				burnblow = true,
				cegtag = "krogtaarblaster",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:Explosion_Light_Plasma-2",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				intensity = 4,
				name = "Blaster",
				noselfdamage = true,
				range = 500,
				reloadtime = 0.5,
				rgbcolor = "0.5 0.5 1.0",
				size = 1.5,
				soundhitdry = "xplomed3",
				soundhitwet = "splssml",
				soundhitwetvolume = 0.6,
				soundstart = "Mavgun2",
				sprayangle = 200,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 350,
				damage = {
					default = 300,
					subs = 5,
				},
				tracks = false,
			},
		},
		weapons = {
			{
				def = "CORE_BLASTER",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}