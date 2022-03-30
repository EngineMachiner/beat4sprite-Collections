
local params = BGA_G.Create( {
	File = "/5th/Sprites/Gradients/D001 8x8.png",
	X_num = { -2, 1 },	Y_num = { -2, 0 },
	Frame_l = 1,	Frame_i = 60,
	Zoom = 4,	Commands = { "Move" },
	Cleanup = true,	 Y_coord = 1
} )

return params:Load()