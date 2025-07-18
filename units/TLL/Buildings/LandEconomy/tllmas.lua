return {
	tllmas = {
		activatewhenbuilt = true,
		buildangle = 4096,
		buildcostenergy = 225092,
		buildcostmetal = 15251,
		builder = false,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 10,
		buildinggrounddecalsizey = 10,
		buildinggrounddecaltype = "tllmas_aoplane.dds",
		buildpic = "tllmas.dds",
		buildtime = 225000,
		canattack = false,
		category = "ALL UNDERWATER SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "90 112 90",
		collisionvolumetype = "CylY",
		description = "Tech Level 4 (Amphibious)",
		energymake = 0,
		energyuse = 1000,
		explodeas = "CRAWL_BLAST",
		extractsmetal = 0.0375,
		footprintx = 7,
		footprintz = 7,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 95,
		mass = 15251,
		maxdamage = 15000,
		maxslope = 20,
		maxwaterdepth = 9999,
		metalstorage = 200,
		name = "Xenolith",
		noautofire = false,
		objectname = "tll/tllmas.s3o",
		onoffable = true,
		radardistance = 0,
		radaremitheight = 114,
		selfdestructas = "MINE_NUKE",
		sightdistance = 322,
		unitname = "tllmas",
		yardmap = "ooooooo ooooooo ooooooo ooooooo ooooooo ooooooo ooooooo",
		customparams = {
			buildpic = "tllmas.dds",
			faction = "TLL",
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:DUST_CLOUD_MEX",
			},
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
			activate = "mexrun1",
			canceldestruct = "cancel2",
			deactivate = "mexoff1",
			underattack = "warning1",
			working = "mexrun1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "arm-bld-defense-action-t1",
			},
			select = {
				[1] = "mexon1",
			},
		},
	},
}
