
local tweaks = ...

local params = beat4sprite.create( {

	{
		File = "/5th/Sprites/DA 4x3.png",
		firstState = 11,	lastState = 12,
		Columns = { -5, 4 },	Rows = 1
	},

	{
		File = "/5th/Sprites/DABC 4x4.png",
		Script = "SpaceEffects/RoundTrace.lua",
		Clockwise = true,	firstState = 9
	}

} )
	
params:tweak( tweaks )
	
return params:Load()