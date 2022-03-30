
local sub = ...

local tweaks = {

	{ 
		File = "5th/Backgrounds/D.png",
		X_num = { -1, 2 },
		X_coord = -1,
		Delay = 3,
		Commands = "Move",
		Cleanup = true
	},

	{ Remove = true }

}

BGA_G.ParTweak( tweaks, sub )
	
return loadfile( BGA_G.BPath("5th001A") )( tweaks )