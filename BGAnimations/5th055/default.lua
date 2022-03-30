
local params = BGA_G.Create( {

	{
		File = "5th/Sprites/BAB 4x4.png",
		Frame_i = 7,	Frame_l = 8,
		X_num = { -4, 3 },	Y_num = { -2, 1 },
		Commands = "LineStates"
	},

	{
		File = "5th/Sprites/BAB 4x4.png",
		Frame_i = 9,	Script = "SpiralStaticTrace.lua"
	}

} )

return params:Load()