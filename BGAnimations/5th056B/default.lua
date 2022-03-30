
local sub = ...

local params = BGA_G.Create( {

	FileTweak = BGA_G.BPath("5th005"),

	{
		File = "5th/Backgrounds/BABC 2x2.png",
		Frame_i = 1,
		X_num = { -2, 1 },	Y_num = { -1, 0 },
		Commands = "Mirror",	Cleanup = true
	},

	{
		Script = "SpaceEffects/Line.lua",
		File = "5th/Sprites/B 4x3.png",
		Frame_i = 1,	Frame_l = 5
	}

} )

params:ParTweak( sub )
params[2].Index = 3

return params:Load()