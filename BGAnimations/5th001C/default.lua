
local sub = ...

local tweaks = {

	ParTweak = BGA_G.ParTweak,

	{
		File = "5th/Backgrounds/BABC 2x2.png",
		Commands = "Mirror",
		X_num = { -2, 1 },
		Y_num = { -1, 0 },
		Frame_i = 2,
		Cleanup = true
	}, {}

}

tweaks:ParTweak( sub )

return loadfile( BGA_G.BPath("5th001A") )( tweaks )