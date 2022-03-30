
local args = ...

local params = BGA_G.Create( {

	{	
		File = "4th/Sprites/Gradients/A 5x6.png",
		Frames = { 1, 30 },	X_num = { 0, 1 },
		Y_num = { -1, 0 },
		Zoom = SCREEN_WIDTH / 320,
		Commands = "Mirror"
	},

	{
		File = "4th/Sprites/ABCD 5x4.png",
		Frames = 11,	Spin = true,
		Dir = "Out",	Type = "CustomDir",
		Script = "SpaceEffects/Line.lua"
	}

} )

params:ParTweak( args )

return params:Load()