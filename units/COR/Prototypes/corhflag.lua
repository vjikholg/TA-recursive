return {
	corhflag = {
		acceleration = 0.05,
		activatewhenbuilt = true,
		brakerate = 0.135,
		buildcostenergy = 1435700,
		buildcostmetal = 100820,
		builder = false,
		buildpic = "corhflag.dds",
		buildtime = 1100000,
		canattack = true,
		canguard = true,
		canhover = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		cantbetransported = true,
		category = "ALL MAJOR  MOBILE SURFACE",
		collisionvolumeoffsets = "0 3 0",
		collisionvolumescales = "130 120 170",
		collisionvolumetype = "Ell",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Ultimate Artillery Hovertank",
		explodeas = "KROG_BLAST",
		firestandorders = 1,
		footprintx = 8,
		footprintz = 8,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 30,
		maneuverleashlength = 640,
		mass = 100825,
		maxdamage = 155750,
		maxslope = 16,
		maxvelocity = 1.3,
		maxwaterdepth = 0,
		mobilestandorders = 1,
		movementclass = "TANKHOVER8",
		name = "Saturn",
		noautofire = false,
		objectname = "core/corhflag.s3o",
		radardistance = 2000,
		radaremitheight = 65,
		selfdestructas = "EXO_BLAST",
		sightdistance = 750,
		standingfireorder = 2,
		standingmoveorder = 1,
		steeringmode = 1,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.2,
		turnrate = 125,
		unitname = "corhflag",
		waterline = 2,
		customparams = {
			buildpic = "corhflag.dds",
			faction = "CORE",
			normaltex = "unittextures/core_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 32768,
				description = "Ultimate Hover Wreckage",
				featuredead = "heap",
				footprintx = 8,
				footprintz = 8,
				metal = 15265,
				object = "core/corhflag_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 15960,
				description = "Ultimate Hover Debris",
				footprintx = 6,
				footprintz = 6,
				metal = 8808,
				object = "6x6d.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		sfxtypes = {
			explosiongenerators = {
				"custom:MEDIUMFLARE",
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
				"cor-hov-large-ok",
			},
			select = {
				"cor-hov-large-sel",
			},
		},
		weapondefs = {
			beam_weapon = {
				areaofeffect = 12,
				beamtime = 0.15,
				corethickness = 0.3,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				energypershot = 75,
				explosiongenerator = "custom:LARGE_GREEN_LASER_BURN",
				firestarter = 90,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 10,
				name = "HighEnergyLaser",
				noselfdamage = true,
				range = 600,
				reloadtime = 1,
				rgbcolor = "0 1 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "lasrhvy3",
				soundtrigger = 1,
				sweepfire = false,
				targetmoveerror = 0.25,
				thickness = 3,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 800,
				customparams = {
					light_mult = 1.8,
					light_radius_mult = 1.2,
				},
				damage = {
					commanders = 150,
					default = 275,
					subs = 5,
				},
				tracks = false,
			},
			cannon_tyrnt = {
				accuracy = 375,
				alphadecay = 0.3,
				areaofeffect = 175,
				avoidfeature = false,
				cegtag = "Trail_cannon",
				craterareaofeffect = 262.5,
				craterboost = 0,
				cratermult = 0,
				energypershot = 1500,
				gravityaffected = "TRUE",
				name = "Heavy Plasma Cannon",
				nogap = 1,
				range = 2500,
				reloadtime = 0.5,
				separation = 0.45,
				size = 1,
				sizedecay = -0.15,
				soundhitdry = "S_rocket_hit",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.6,
				soundstart = "tyrnt_fire",
				stages = 20,
				tolerance = 750,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 742,
				damage = {
					commanders = 450,
					default = 900,
					subs = 5,
				},
				tracks = false,
			},
			rocket_krog = {
				areaofeffect = 80,
				avoidfeature = false,
				cegtag = "corstartbursttrail",
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASHSMALLBUILDINGEX",
				firestarter = 70,
				flighttime = 5,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "weapon_starburstl.s3o",
				name = "Heavy Rockets",
				noselfdamage = true,
				proximitypriority = -1,
				range = 1050,
				reloadtime = 1,
				smoketrail = false,
				soundhitdry = "xplosml2",
				soundhitwet = "splssml",
				soundhitwetvolume = 0.6,
				soundstart = "rocklit1",
				startvelocity = 350,
				targetable = 16,
				texture1 = "null",
				texture2 = "null",
				texture3 = "null",
				texture4 = "null",
				tolerance = 9000,
				tracks = false,
				turnrate = 63000,
				weaponacceleration = 200,
				weapontimer = 1,
				weapontype = "StarburstLauncher",
				weaponvelocity = 4000,
				customparams = {
					light_color = "1 0.6 0.15",
					light_mult = 3.3,
					light_radius_mult = 1.9,
				},
				damage = {
					commanders = 250,
					default = 500,
					subs = 5,
				},
			},
			blod_doom = {
				areaofeffect = 32,
				beamtime = 0.5,
				corethickness = 0.3,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				energypershot = 2500,
				explosiongenerator = "custom:FLASH3blue",
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 22,
				name = "Doomsday Weapon",
				noselfdamage = true,
				range = 950,
				reloadtime = 2.5,
				rgbcolor = "0 0 1",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "annigun1",
				soundtrigger = 1,
				sweepfire = false,
				targetmoveerror = 0.3,
				thickness = 6,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1000,
				customparams = {
					light_mult = 1.8,
					light_radius_mult = 1.2,
				},
				damage = {
					commanders = 1250,
					default = 2500,
					subs = 5,
				},
				tracks = false,
			},
		},
		weapons = {
			{
				badtargetcategory = "LARGE MEDIUM SMALL MINOR",
				def = "CANNON_TYRNT",
				onlytargetcategory = "SURFACE",
			},
			{
				badtargetcategory = "MEDIUM SMALL MINOR",
				def = "BLOD_DOOM",
				maindir = "0 0 1",
				maxangledif = 180,
				onlytargetcategory = "SURFACE",
			},
			{
				def = "BEAM_WEAPON",
				maindir = "0.25 0 1",
				maxangledif = 200,
				onlytargetcategory = "SURFACE",
			},
			{
				def = "BEAM_WEAPON",
				maindir = "0.15 0 1",
				maxangledif = 200,
				onlytargetcategory = "SURFACE",
			},
			{
				def = "BEAM_WEAPON",
				maindir = "-0.15 0 1",
				maxangledif = 200,
				onlytargetcategory = "SURFACE",
			},
			{
				def = "BEAM_WEAPON",
				maindir = "-0.25 0 1",
				maxangledif = 200,
				onlytargetcategory = "SURFACE",
			},
			{
				badtargetcategory = "MINOR",
				def = "ROCKET_KROG",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}