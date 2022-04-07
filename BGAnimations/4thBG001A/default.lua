
local args = ...

local params = BGA_G.Create( {

	{
		File = BGA_G.SongBGPath(),
		Script = "WarpingEffects/Spacing.lua"
	},

	{	
		File = "4th/Sprites/AB 5x4.png",
		Frames = { 2, 15 },	X_num = 5,
		SkipFrame = 3,
		X_pos = 0.5,	Y_num = { -2, 1 },
		Blend = "BlendMode_Add",
		TCV = { -1, 0 },
		Commands = "StairsStates"
	}

} )

params:ParTweak( args )

return params:Load()