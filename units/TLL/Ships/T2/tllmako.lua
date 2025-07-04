return {
	tllmako = {
		activatewhenbuilt = true,
		acceleration = 0.025,
		brakerate = 0.35,
		buildangle = 15000,
		buildcostenergy = 82501,
		buildcostmetal = 5954,
		builder = false,
		buildpic = "tllmako.dds",
		buildtime = 70000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = 1,
		category = "ALL HUGE MOBILE SURFACE UNDERWATER",
		collisionvolumeoffsets = "0 -11 0",
		collisionvolumescales = "45 66 130",
		collisionvolumetype = "CylZ",
		corpse = "dead",
		defaultmissiontype = "Standby",
		description = "Shielded Artillery ship",
		energystorage = 500,
		explodeas = "BIG_UNITEX",
		firestandorders = 1,
		floater = true,
		footprintx = 6,
		footprintz = 6,
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 41,
		maneuverleashlength = 640,
		mass = 4954,
		maxdamage = 8050,
		maxvelocity = 1.15,
		minwaterdepth = 30,
		mobilestandorders = 1,
		movementclass = "DBOAT6",
		name = "Mako",
		noautofire = false,
		objectname = "tll/tllmako.s3o",
		radaremitheight = 56,
		selfdestructas = "CRAWL_BLAST",
		sightdistance = 650,
		standingfireorder = 2,
		standingmoveorder = 0,
		steeringmode = 1,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.254,
		turnrate = 150,
		unitname = "tllmako",
		waterline = 2,
		customparams = {
			buildpic = "tllmako.dds",
			faction = "TLL",
			shield_power = 2500,
			shield_radius = 300,
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 10454,
				description = "mako Wreckage",
				featuredead = "heap",
				footprintx = 6,
				footprintz = 6,
				metal = 5700,
				object = "tll/tllmako_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 13067,
				description = "mako Debris",
				featuredead = "heap2",
				footprintx = 6,
				footprintz = 6,
				metal = 3040,
				object = "4x4c.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap2 = {
				blocking = false,
				damage = 6533,
				description = "mako Metal Shards",
				footprintx = 6,
				footprintz = 6,
				metal = 1900,
				object = "3x3a.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		sfxtypes = {
			explosiongenerators = {
				"custom:MEDIUMFLARE",
				"custom:Generic_Muzzle",
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
				"arm-shp-medium-ok",
			},
			select = {
				"arm-shp-medium-sel",
			},
		},
		weapondefs = {
			tll_bats = {
				accuracy = 350,
				areaofeffect = 96,
				avoidfeature = false,
				burst = 2,
				burstrate = 0.25,
				cegtag = "Trail_cannon",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH96",
				gravityaffected = "TRUE",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "BattleshipCannon",
				nogap = 1,
				noselfdamage = true,
				range = 1675,
				reloadtime = 1,
				rgbcolor = "0.86 0.62 0",
				separation = 0.45,
				size = 1.25,
				sizedecay = -0.15,
				soundhitdry = "xplomed2",
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.6,
				soundstart = "cannhvy1",
				stages = 20,
				tolerance = 5000,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 525,
				damage = {
					default = 150,
					subs = 5,
				},
				tracks = false,
			},
			repulsor2 = {
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				name = "PlasmaRepulsor",
				shieldbadcolor = "1 0.2 0.2 0.30",
				shieldenergyuse = 375,
				shieldforce = 8,
				shieldgoodcolor = "0.2 1 0.2 0.30",
				shieldintercepttype = 1,
				shieldpower = 2500,
				shieldpowerregen = 37.5,
				shieldpowerregenenergy = 375,
				shieldradius = 300,
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
				tracks = false,
			},
		},
		weapons = {
			{
				def = "TLL_BATS",
				maindir = "0 0 1",
				maxangledif = 300,
				onlytargetcategory = "SURFACE",
			},
			[3] = {
				def = "REPULSOR2",
			},
		},
	},
}