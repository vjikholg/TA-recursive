return {
	armmds = {
		acceleration = 0,
		brakerate = 0,
		buildangle = 8200,
		buildcostenergy = 12298,
		buildcostmetal = 1251,
		builder = false,
		buildtime = 22500,
		canattack = true,
		canstop = 1,
		category = "ALL SURFACE",
		collisionvolumeoffsets = "0 1 0",
		collisionvolumescales = "36 89 36",
		collisionvolumetype = "CylY",
		corpse = "dead",
		defaultmissiontype = "GUARD_NOMOVE",
		description = "Missile Defense System",
		energystorage = 0,
		energyuse = 0,
		explodeas = "MEDIUM_BUILDINGEX",
		firestandorders = 1,
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 27,
		mass = 1251,
		maxdamage = 3325,
		maxslope = 10,
		maxvelocity = 0,
		maxwaterdepth = 0,
		name = "Sunspot",
		noautofire = false,
		objectname = "arm/armmds.s3o",
		radaremitheight = 79,
		seismicsignature = 0,
		selfdestructas = "MEDIUM_BUILDING",
		sightdistance = 500,
		standingfireorder = 2,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0,
		turnrate = 0,
		unitname = "armmds",
		yardmap = "ooo ooo ooo",
		customparams = {
			buildpic = "armmda.png",
			faction = "ARM",
			normaltex = "unittextures/arm_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				collisionvolumeoffsets = "-0.0445556640625 -0.0718220947266 6.04946899414",
				collisionvolumescales = "42.0427246094 74.7609558105 56.8743896484",
				collisionvolumetype = "Box",
				damage = 2252,
				description = "Sunspot Wreckage",
				energy = 0,
				featuredead = "heap",
				footprintx = 2,
				footprintz = 2,
				metal = 333,
				object = "arm/armmds_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 2815,
				description = "Sunspot Debris",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				metal = 178,
				object = "2x2a.s3o",
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
			cloak = "kloak1",
			uncloak = "kloak1un",
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
				[1] = "twractv3",
			},
			select = {
				[1] = "twractv3",
			},
		},
		weapondefs = {
			mds = {
				areaofeffect = 300,
				avoidfeature = false,
				collidefeature = false,
				coverage = 1000,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				energypershot = 150,
				explosiongenerator = "custom:anti_laser_explosion_glow",
				impulseboost = 0,
				impulsefactor = 0,
				interceptor = 16,
				interceptSolo = true, -- from false -> true, now only one MDS can intercept a missile at a time
				name = "Missile/Rocket Interceptor",
				noselfdamage = true,
				range = 1500,
				reloadtime = 0.200,
				rgbcolor = "0.000 0.012 1.000",
				soundhitdry = "lasrhvy2",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "lasrfast",
				soundtrigger = true,
				thickness = 5,
				turret = true,
				weapontype = "LaserCannon",
				weaponvelocity = 2000,
				damage = {
					default = 1,
				},
			},
		},
		weapons = {
			[1] = {
				def = "MDS",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
