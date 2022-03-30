
local sub = ...

local params = {
	{
		File = "5th/Sprites/CAB 5x4.png",
		Frame_i = 6,
		X_num = 5,
		Y_num = { -2, 1 },
		Commands = "",
		Mirror = false
	},	{}
}

BGA_G.ParTweak( params, sub )

return loadfile( BGA_G.BPath("5th017AA") )( params )