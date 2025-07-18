return {
	armamaker = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 2321,
		buildcostmetal = 77,
		builder = false,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 6,
		buildinggrounddecalsizey = 6,
		buildinggrounddecaltype = "armamaker_aoplane.dds",
		buildpic = "armamaker.dds",
		buildtime = 4000,
		category = "ALL SURFACE",
		collisionvolumeoffsets = "0 0 1",
		collisionvolumescales = "48.6 29.6 54.6",
		collisionvolumetype = "box",
		description = "Converts upto 150 Energy to Metal",
		explodeas = "ARMESTOR_BUILDING",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 26,
		mass = 135,
		maxdamage = 325,
		maxslope = 10,
		maxvelocity = 0,
		maxwaterdepth = 0,
		name = "Advanced Metal Maker",
		noautofire = false,
		objectname = "arm/armamaker.s3o",
		onoffable = false,
		radaremitheight = 25,
		seismicsignature = 0,
		selfdestructas = "ARMESTOR_BUILDING",
		sightdistance = 273,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0,
		turnrate = 0,
		unitname = "armamaker",
		usebuildinggrounddecal = true,
		yardmap = "oooooooooooooooo",
		customparams = {
			buildpic = "armamaker.dds",
			faction = "ARM",
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:maker_sfx",
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
			activate = "arm-bld-metalmaker",
			canceldestruct = "cancel2",
			deactivate = "metloff1",
			underattack = "warning1",
			working = "metlrun1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "arm-bld-metalmaker",
			},
		},
	},
}
