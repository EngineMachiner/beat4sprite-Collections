
local tweaks = ...

local params = BGA_G.Create( {

	{	
		File = "/5th/Sprites/HSV/DAB2 4x4.png",
		X_num = { -4, 3 },	Y_num = { -2, 1 },
		Frame_i = 8,	Frame_l = 9,
		Static = true,	Commands = { "StairsStates" }
	},

	{		
		File = "/5th/Sprites/DABC 4x4.png",
		Frame_i = 1,	Frame_l = 2,
		Script = "SpiralStaticTrace.lua"
	}

} )
params:ParTweak( tweaks )

return params:Load()