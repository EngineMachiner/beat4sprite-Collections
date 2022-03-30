
local sub = ...

local params = BGA_G.Create( {

	{
		File = "/5th/Backgrounds/BABC 2x2.png",
		Frame_i = 3,
		X_num = { -2, 1 },
		Y_num = { -1, 0 },
		Commands = "Mirror",
		Cleanup = true
	},

	{
		Script = BGA_G.SPath .. "SpaceEffects/Line.lua",
		File = "/5th/Sprites/B 4x3.png",
		Frame_i = 1,
		Frame_l = 5
	}

} )

params:ParTweak( sub )
params[2].Index = 3

return loadfile( BGA_G.BPath("5th005") )( params )