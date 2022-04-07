
local args = ...

local params = BGA_G.Create( {

	{
		File = "4th/Sprites/Gradients/A001 8x8.png",
		X_num = { -2, 1 },
		Y_num = { -1, 0 },
		Frame_i = 60,
		Frame_l = 1,
		Zoom = 4,
		FrmDelay = 4,
		Commands = "Mirror"
	},

	{	
		File = "4th/Sprites/AB 5x4.png",
		Frames = { 2, 15 },
		X_num = 4,
		Y_num = 2,
		SkipFrame = 1,
		Blend = "BlendMode_Add",
		TCV = { 0, -1 },
		Commands = "StairsStates"
	}

} )

params:ParTweak( args )

return BGA_G.Load(params)