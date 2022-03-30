
local sub = ...

local tweaks = {

	{ 
		
		File = "5th/Sprites/DA 4x3.png",
		Frame_i = 9,
		Frame_l = 10,
		X_num = { -4, 3 },
		Y_num = 1,
		Commands = "StairsStates",
		Cleanup = true
	},

	{ Remove = true }

}

BGA_G.ParTweak( tweaks, sub )

return loadfile( BGA_G.BPath("5th001A") )( tweaks )