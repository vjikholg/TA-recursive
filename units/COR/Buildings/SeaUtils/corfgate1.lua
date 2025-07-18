return {
	corfgate1 = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 2048,
		buildcostenergy = 168011,
		buildcostmetal = 12909,
		builder = false,
		buildpic = "corfgate1.dds",
		buildtime = 150000,
		canattack = false,
		category = "ALL SURFACE UNDERWATER",
		corpse = "dead",
		description = "Tech Level 3",
		energystorage = 1500,
		energyuse = 0,
		explodeas = "CRAWL_BLAST",
		footprintx = 5,
		footprintz = 5,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 42,
		mass = 13408,
		maxdamage = 5385,
		maxslope = 10,
		maxvelocity = 0,
		minwaterdepth = 5,
		name = "Floating Plasma Deflector",
		noautofire = false,
		norestrict = 1,
		objectname = "core/corfgate1.s3o",
		radaremitheight = 41,
		seismicsignature = 0,
		selfdestructas = "MINE_NUKE",
		sightdistance = 273,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0,
		turnrate = 0,
		unitname = "corfgate1",
		waterline = 2,
		yardmap = "ooooo ooooo ooooo ooooo ooooo",
		customparams = {
			buildpic = "corfgate1.dds",
			faction = "cor",
			shield_power = 30000,
			shield_radius = 700,
			normaltex = "unittextures/core_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 6216,
				description = "Super Shield Wreckage",
				energy = 0,
				featuredead = "heap",
				footprintx = 4,
				footprintz = 4,
				metal = 10025,
				object = "core/corgate4_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 7770,
				description = "Super Shield Debris",
				energy = 0,
				footprintx = 4,
				footprintz = 4,
				metal = 5346,
				object = "4x4d.s3o",
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
			repulsor1 = {
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				name = "PlasmaRepulsor",
				range = 700,
				shieldbadcolor = "1 0.2 0.2 0.30",
				shieldenergyuse = 1250,
				shieldforce = 7,
				shieldgoodcolor = "0.2 1 0.2 0.30",
				shieldintercepttype = 1,
				shieldpower = 30000,
				shieldpowerregen = 125,
				shieldpowerregenenergy = 1250,
				shieldradius = 700,
				shieldrepulser = true,
				smartshield = true,
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				visibleshieldrepulse = true,
				weapontype = "Shield",
				damage = {
					default = 100,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				def = "REPULSOR1",
			},
		},
	},
}
