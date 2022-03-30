
local sub = ...

local tweaks = {

	{
		File = "5th/Sprites/CAB 5x4.png",
		Frame_i = 16,
		Frame_l = 20,
		Cleanup = true,
		X_num = 5,
		Y_num = { -2, 1 }
	},

	{ Remove = true }

}

BGA_G.ParTweak( tweaks,	sub )

return loadfile( BGA_G.BPath("5th001A") )( tweaks )