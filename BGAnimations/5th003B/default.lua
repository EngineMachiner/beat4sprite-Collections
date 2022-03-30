
local tweaks = {
	Cleanup = true,
	File = "5th/Sprites/CA 4x3.png",
	X_num = { -4, 3 },	Y_num = 1,
	Frame_i = 4,	Frame_l = 6
}

return loadfile( BGA_G.BPath("5th003A") )( tweaks )