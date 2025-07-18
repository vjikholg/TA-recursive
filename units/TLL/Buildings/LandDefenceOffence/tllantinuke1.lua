return {
	tllantinuke1 = {
		buildangle = 4096,
		buildcostenergy = 74239,
		buildcostmetal = 3955,
		builder = false,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 6,
		buildinggrounddecalsizey = 6,
		buildinggrounddecaltype = "tllantinuke_aoplane.dds",
		buildpic = "tllantinuke1.dds",
		buildtime = 100000,
		category = "ALL SURFACE",
		corpse = "dead",
		description = "Tech Level 2",
		energyuse = 0,
		explodeas = "LARGE_BUILDINGEX",
		firestandorders = 1,
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 61,
		mass = 3655,
		maxdamage = 4295,
		maxslope = 10,
		maxwaterdepth = 0,
		name = "Advanced Anti-Nuke",
		noautofire = true,
		objectname = "tll/tllantinuke1.s3o",
		radardistance = 0,
		radaremitheight = 60,
		script = "tllantinuke.cob",
		selfdestructas = "LARGE_BUILDING",
		sightdistance = 155,
		standingfireorder = 2,
		unitname = "tllantinuke1",
		usebuildinggrounddecal = true,
		yardmap = "oooo oooo oooo oooo",
		customparams = {
			buildpic = "tllantinuke1.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 2585,
				description = "Advanced Peacemaker Wreckage",
				featuredead = "heap",
				footprintx = 4,
				footprintz = 4,
				metal = 2628,
				object = "tll/tllantinuke_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 3232,
				description = "Advanced Peacemaker Debris",
				footprintx = 4,
				footprintz = 4,
				metal = 1401,
				object = "4x4a.s3o",
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
				[1] = "arm-bld-defense-action-t2",
			},
			select = {
				[1] = "arm-bld-defense-action-t2",
			},
		},
		weapondefs = {
			amd_rocket3 = {
				areaofeffect = 400,
				avoidfeature = false,
				avoidfriendly = false,
				collidefriendly = false,
				coverage = 2650,
				craterareaofeffect = 600,
				craterboost = 0,
				cratermult = 0,
				energypershot = 30000,
				explosiongenerator = "custom:FLASH4",
				firestarter = 100,
				flighttime = 120,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				interceptor = 1,
				metalpershot = 300,
				model = "weapon_antinuke.s3o",
				name = "Rocket",
				noselfdamage = true,
				range = 72000,
				reloadtime = 2,
				smoketrail = true,
				soundhitdry = "xplomed4",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.6,
				soundstart = "srm41",
				stockpile = true,
				stockpiletime = 50,
				tolerance = 4000,
				tracks = true,
				turnrate = 113850,
				weaponacceleration = 175,
				weapontimer = 3,
				weapontype = "StarburstLauncher",
				weaponvelocity = 3600,
				damage = {
					default = 15000,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				def = "AMD_ROCKET3",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
