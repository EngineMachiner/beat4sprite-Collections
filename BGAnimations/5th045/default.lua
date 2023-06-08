
local tweaks = ...

local params = beat4sprite.create( {

	{	
		File = "/5th/Sprites/HSV/DAB2 4x4.png",
		Columns = { -4, 3 },	Rows = { -2, 1 },
		firstState = 8,	lastState = 9,
		AnimationTypes = "Static",	Commands = "StairsStates"
	},

	{		
		File = "/5th/Sprites/DABC 4x4.png",
		firstState = 1,	lastState = 2,
		Columns = { -1, 2 },
		Script = "SpiralStaticTrace.lua"
	}

} )
params:tweak( tweaks )

return params:Load()