return {
	tllsilo1 = {
		buildangle = 8192,
		buildcostenergy = 163407,
		buildcostmetal = 16574,
		builder = false,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 8,
		buildinggrounddecalsizey = 8,
		buildinggrounddecaltype = "tllsilo_aoplane.dds",
		buildpic = "tllsilo.dds",
		buildtime = 300000,
		canattack = true,
		canstop = 1,
		category = "ALL SURFACE",
		corpse = "dead",
		description = "Tech Level 2",
		digger = 1,
		explodeas = "CRAWL_BLAST",
		firestandorders = 1,
		firestate = 0,
		footprintx = 5,
		footprintz = 5,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 46,
		mass = 16574,
		maxdamage = 8520,
		maxslope = 10,
		maxwaterdepth = 0,
		name = "Enriched Nuclear ICBM Launcher",
		noautofire = false,
		objectname = "tll/tllsilo1.s3o",
		radardistance = 0,
		radaremitheight = 69,
		script = "tllsilo.cob",
		selfdestructas = "CRAWL_BLAST",
		sightdistance = 350,
		standingfireorder = 0,
		unitname = "tllsilo1",
		usebuildinggrounddecal = true,
		yardmap = "ooooo ooooo ooooo ooooo ooooo",
		customparams = {
			buildpic = "tllsilo.dds",
			faction = "TLL",
			normaltex = "unittextures/tll_normals.dds",
		},
		featuredefs = {
			dead = {
				blocking = true,
				damage = 5807,
				description = "Revenger Wreckage",
				featuredead = "heap",
				footprintx = 5,
				footprintz = 5,
				metal = 10625,
				object = "tll/tllsilo_dead.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
			heap = {
				blocking = false,
				damage = 7259,
				description = "Revenger Debris",
				footprintx = 5,
				footprintz = 5,
				metal = 6600,
				object = "5x5c.s3o",
				reclaimable = true,
				customparams = {
					fromunit = 1,
				},
			},
		},
		sfxtypes = {
			explosiongenerators = {
				"custom:launchnuke_small",
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
				"arm-bld-defense-action-t2",
			},
			select = {
				"arm-bld-defense-action-t2",
			},
		},
		weapondefs = {
			nuclear_missile1 = {
				areaofeffect = 1560,
				avoidfeature = false,
				avoidfriendly = false,
				cegtag = "Trail_Large_Rocket",
				collidefriendly = false,
				commandfire = true,
				craterareaofeffect = 1560,
				craterboost = 0.72,
				cratermult = 0.36,
				edgeeffectiveness = 0.3,
				energypershot = 300000,
				explosiongenerator = "custom:nuke_explo_1560",
				firestarter = 0,
				flighttime = 400,
				impulseboost = 0.5,
				impulsefactor = 2.5,
				metalpershot = 2500,
				model = "weapon_nuke_core.s3o",
				name = "NuclearMissile",
				range = 72000,
				reloadtime = 20,
				smoketrail = true,
				soundhitdry = "xplomed4",
				soundstart = "misicbm1",
				stockpile = true,
				stockpiletime = 100,
				targetable = 1,
				texture1 = "null",
				texture2 = "null",
				texture3 = "null",
				texture4 = "null",
				tolerance = 4000,
				turnrate = 32768,
				weaponacceleration = 140,
				weapontimer = 8,
				weapontype = "StarburstLauncher",
				weaponvelocity = 1300,
				damage = {
					commanders = 3750,
					default = 15000,
					subs = 1500,
				},
				customparams = {
					light_color = "1 0.6 0.2",
					light_mult = 7,
					light_radius_mult = 2,
					expl_light_color = "1 0.85 0.55",
					expl_light_mult = 1.25,
					expl_light_life_mult = 2.4,
					expl_light_radius_mult = 0.9,
				},
				tracks = false,
			},
		},
		weapons = {
			{
				def = "NUCLEAR_MISSILE1",
				onlytargetcategory = "SURFACE UNDERWATER",
			},
		},
	},
}