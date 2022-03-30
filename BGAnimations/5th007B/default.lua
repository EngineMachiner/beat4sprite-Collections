
local tweaks = {

	
	X_num = { -4, 6 },
	X_coord = -1,
	Commands = { "StairsStates", "Move" }

}

return loadfile( BGA_G.BPath("5th007A") )( tweaks )