
local sub = ...

local tweaks = {

	{
		Y_coord = 1,	FrmDelay = 2,
		Commands = { "StairsStates", "Move" },
	},

	{ Remove = true }

}

BGA_G.ParTweak( tweaks, sub )
return loadfile( BGA_G.BPath("5th006A") )( tweaks )
