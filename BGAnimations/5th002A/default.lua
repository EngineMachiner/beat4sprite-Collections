
local sub = ...

local tweaks = {

	ParTweak = BGA_G.ParTweak,
	
	{ Remove = true },

	{
		File = {
			"5th/Backgrounds/ABC2.png",
			"5th/Backgrounds/ABC.png"
		},
		X_num = 1,
		Y_coord = -1,
		Cleanup = true
	}

}

tweaks:ParTweak( sub )

return loadfile( BGA_G.BPath("5th001A") )( tweaks )