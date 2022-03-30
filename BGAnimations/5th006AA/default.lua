
local sub = ...

local tweaks = {

	{
		Cleanup = true,
		File = "5th/Sprites/DABCD 1x4.png",
		Frame_l = 4,	X_num = 1,
		Y_num = { -3, 4 },
		Y_coord = -1,	FrmDelay = 2,
		Commands = { "StairsStates", "Move" }
	},

	{ Remove = true }
	
}
	
BGA_G.ParTweak( tweak, sub )

return loadfile( BGA_G.BPath("5th001A") )( tweaks )
