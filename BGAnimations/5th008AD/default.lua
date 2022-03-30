
local tweaks = {
	Index = 3,
	X_num = { -4, 5 },
	X_coord = -1,
	Commands = "Move"
}

return loadfile( BGA_G.BPath("5th008AA") )( tweaks )