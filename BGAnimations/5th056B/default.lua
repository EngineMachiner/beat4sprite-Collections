
local sub = ...

local params = beat4sprite.create( {

	tweakScript = beat4sprite.Paths.getBGAFile("5th005"),

	{
		File = "5th/Backgrounds/BABC 2x2.png",
		firstState = 1,
		Columns = { -2, 1 },	Rows = { -1, 0 },
		Commands = "Mirror",	Cleanup = true
	},

	{
		Script = "SpaceEffects/Line.lua",
		File = "5th/Sprites/B 4x3.png",
		firstState = 1,	lastState = 5
	}

} )

params:tweak( sub )
params[2].Index = 3

return params:Load()