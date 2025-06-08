local Sounds = {
    SoundItems = {
        IncomingChat = {
 	    --- always play on the front speaker(s)
 		    file = "sounds/sfx_ui/beep4.wav",
 		    in3d = "false",
        },
        MultiSelect = {
		    file = "sounds/sfx_ui/button9.wav",
		    in3d = "false",
        },
        MapPoint = {
		    file = "sounds/sfx_ui/beep6.wav",
		    rolloff = 0.3,
		    dopplerscale = 0,       
        },
        FailedCommand = {
		    file = "sounds/sfx_ui/cantdo4.wav",       
        },
        warning2 = {
		    file = "sounds/sfx_ui/warning2.wav",
		    rolloff = 0.2,
		    dopplerscale = 0,      
        }
    },
}

--[[ Add sound entries for directory sounds/some-directory/ using the following format:
	['some-directory'] = {
		gain = 0.8,
		maxconcurrent = 1,
		rolloff = 0,
	},

	Compound directories can be used e.g. sound/some-directory/other-directory
	['some-directory/other-directory'] = {

	For attributes that use custom values per sound file:
	gain = {
		default = 0.5,
		custom = {
			['^beamershot2$'] = 0.4,
			['^lasr'] = 0.1,
		},
	},

	Key name is used in string:match for sound file name
	^example$	- exact match whole file name
	^exam		- match any file starting with "exam"
]]
local soundData = {
	-- UI SOUNDS
	['sfx_ui'] = {
		gain = 0.8,
		pitchmod = 0,
		gainmod  = 0,
		dopplerscale = 0,
		maxconcurrent = 1,
		--priority = 1,
		rolloff = 0,
	},

	-- ['uw'] = {
	-- 	gain = 1.2 * 0.3,
	-- 	pitchmod = 0.17,
	-- 	gainmod  = 0.2 * 0.3,
	-- 	dopplerscale = 0,
	-- 	maxconcurrent = 8,
	-- 	--priority = 1,
	-- 	rolloff = 0.1,
	-- },

	-- BAR-WEAPONS SOUNDS
	['bar-weapons'] = {
		gain = {
			default = 1.2 * 0.3,
			custom = {
				['^beamershot2$'] = 0.5 * 0.3,
				['^disigun1$'] = 0.075 * 0.3,
				-- ['^newboom$'] = 0.045 * 0.3,
				['^xplomas2$'] = 0.225 * 0.3,
			},
		},
		pitchmod = {
			default = 0.17,
			custom = {
				['^heliosfire$'] = 0.03,
				['^beamershot2$'] = 0.04,
				['^lasfirerc$'] = 0.06,
				['^heatray'] = 0,
				['^lasr'] = 0,
				['^nanlath'] = 0.02,
				['^mavgun'] = 0.06,
				['^mgun'] = 0.08,
				['^minigun'] = 0.09,
				['^lrpcshot'] = 0.12,
				['^raptorlaser$'] = 0.04,
				['^heatray3'] = 0.04,
				['^xplosml'] = 0.22,
				['^xplomed'] = 0.25,
				['^xplolrg'] = 0.3,
				['^nukelaunch$'] = 0.08,
				['^nukelaunchalarm$'] = 0,
			},
		},
		gainmod  = 0.2 * 0.3,
		maxconcurrent = {
			default = 7,
			custom = {
				['^minigun'] = 12,
			},
		},
		dopplerscale = 1.0,
		rolloff = 1.4,
	},

	
	['sfx_weapons'] = {
		gain = {
			default = 1.2 * 0.3,
			custom = {
				['^beamershot2$'] = 0.5 * 0.3,
				['^disigun1$'] = 0.075 * 0.3,
				-- ['^newboom$'] = 0.045 * 0.3,
				['^xplomas2$'] = 0.225 * 0.3,
			},
		},
		pitchmod = {
			default = 0.17,
			custom = {
				['^heliosfire$'] = 0.03,
				['^beamershot2$'] = 0.04,
				['^lasfirerc$'] = 0.06,
				['^heatray'] = 0,
				['^lasr'] = 0,
				['^nanlath'] = 0.02,
				['^mavgun'] = 0.06,
				['^mgun'] = 0.08,
				['^minigun'] = 0.09,
				['^lrpcshot'] = 0.12,
				['^raptorlaser$'] = 0.04,
				['^heatray3'] = 0.04,
				['^xplosml'] = 0.22,
				['^xplomed'] = 0.25,
				['^xplolrg'] = 0.3,
				['^nukelaunch$'] = 0.08,
				['^nukelaunchalarm$'] = 0,
			},
		},
		gainmod  = 0.2 * 0.3,
		maxconcurrent = {
			default = 7,
			custom = {
				['^minigun'] = 12,
			},
		},
		dopplerscale = 1.0,
		rolloff = 1.4,
	},

	-- RAPTOR SOUNDS
	['sfx_chicken'] = {
		gain = 1.2 * 0.5,
		pitchmod = {
			default = 0.23,
			custom = {
				['^talonattack$'] = 0.07
			},
		},
		gainmod  = 0.2 * 0.3,
		dopplerscale = 1.0,
		maxconcurrent = 6,
		rolloff = 1.1,
	},

	-- LAND UNIT MOVEMENT SOUNDS
	['sfx_movement/on-arrive'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.062,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 2,
		rolloff = 0.1,
		priority = 1,
		--in3d = false,
	},

		['sfx_movement/on-movement'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.062,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 2,
		rolloff = 0.1,
		priority = 1,
		--in3d = false,
	},

		-- REPLY SOUNDS
	['sfx_movement/on-reply'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.02,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 32,
		rolloff = 0.05,
		priority = 1,
		--in3d = false,
	},

		['sfx_movement/on-select'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.062,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 2,
		rolloff = 0.1,
		priority = 1,
		--in3d = false,
	},

	-- AIR UNIT MOVEMENT SOUNDS
	['sfx_movement_air/on-arrive'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.02,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 2,
		rolloff = 0.1,
		priority = 1,
		--in3d = false,
	},

		['sfx_movement_air/on-movement'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.02,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 2,
		rolloff = 0.1,
		priority = 1,
		--in3d = false,
	},

		['sfx_movement_air/on-reply'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.02,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 2,
		rolloff = 0.1,
		priority = 1,
		--in3d = false,
	},

		['sfx_movement_air/on-select'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.02,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 2,
		rolloff = 0.1,
		priority = 1,
		--in3d = false,
	},

		['sfx_movement_air/on-stop'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.02,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 2,
		rolloff = 0.1,
		priority = 1,
		--in3d = false,
	},

	-- UNIT FUNCTION/WEAPON SOUNDS
	 ['sfx_units'] = {
	 	gain = 1.2 * 0.3,
	 	pitchmod = 0.02,
	 	gainmod  = 0.2 * 0.3,
	 	dopplerscale = 0,
	 	maxconcurrent = 7,
	 	rolloff = 0.1,
	 	priority = 1,
	 	--in3d = false,
	 },

	-- BUILDING FUNCTION/WEAPON SOUNDS
	['sfx_buildings/on-build'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.03,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 2,
		rolloff = 0.1,
		priority = 1,
		--in3d = false,
	},

		['sfx_buildings/on-okay'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.03,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 2,
		rolloff = 0.1,
		priority = 1,
		--in3d = false,
	},

		['sfx_buildings/on-select'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.03,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 2,
		rolloff = 0.1,
		priority = 1,
		--in3d = false,
	},

		['sfx_buildings/on-underattack'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.03,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 2,
		rolloff = 0.1,
		priority = 1,
		--in3d = false,
	},

	-- UI COMMANDS SOUNDS
	['sfx_commands'] = {
		gain = 1.2 * 0.3,
		pitchmod = 0.02,
		gainmod  = 0.2 * 0.3,
		dopplerscale = 0,
		maxconcurrent = 32,
		rolloff = 0,
		priority = 1,
		--in3d = false,
	},

	['sfx_new_weapons'] = {
		gain =default = 1.2 * 0.3, 
		pitchmod = default = 0.17,
		gainmod  = 0.2 * 0.3,
		maxconcurrent = {
			default = 7,
			custom = {
				['^minigun'] = 12,
			},
		},
		dopplerscale = 1.0,
		rolloff = 1.4,
	},
}

local function loadSoundFiles(directory, soundAttributes)
	local soundFiles = VFS.DirList(directory)

	for _, fileName in ipairs(soundFiles) do
		local soundName = string.sub(fileName, string.len(directory) + 1, string.find(fileName, ".wav") -1)
		Sounds.SoundItems[soundName] = {}
		Sounds.SoundItems[soundName].file = fileName

		local value
		for attribute, attributeValue in pairs(soundAttributes) do
			if type(attributeValue) ~= "table" then
				value = attributeValue
			else
				value = attributeValue.default

				for soundMatchPattern, customValue in pairs(attributeValue.custom) do
					if soundName:match(soundMatchPattern) then
						value = customValue
					end
				end
			end

			Sounds.SoundItems[soundName][attribute] = value
		end
	end
end

for directory, attributes in pairs(soundData) do
	loadSoundFiles('sounds/' .. directory .. '/', attributes)
end

return Sounds
