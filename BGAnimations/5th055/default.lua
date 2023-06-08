
local tweaks = ...

local params = beat4sprite.create {

	{
		File = "5th/Sprites/BAB 4x4.png",
		firstState = 7,	lastState = 8,
		Columns = { -4, 3 },	Rows = { -2, 1 },
		Commands = "LineStates"
	},

	{
		File = "5th/Sprites/BAB 4x4.png",
		firstState = 9,	Script = "SpiralStaticTrace.lua",
		Columns = { -1, 2 }
	}

}

params:tweak(tweaks)

return params:Load()