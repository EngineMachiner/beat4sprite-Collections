
local tweaks = BGA_G.Create( {
	File = "5th/Sprites/Gradients/D001 8x8.png",
	X_num = { -2, 1 },	Y_num = 1,
	Frame_l = 60,	Zoom = 4,
	Commands = { "Move" },	Cleanup = true,
	Y_coord = -1
} )

return loadfile( BGA_G.BPath("5th004A") )( tweaks )