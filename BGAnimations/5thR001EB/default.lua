
local params = BGA_G.Create( {
	File = "5th/Sprites/Gradients/A003 8x8.png",
	X_num = { -2, 1 },	Y_num = { -1, 0 },
	Frame_i = 60,	Frame_l = 1,
	Zoom = 4,	FrmDelay = 4,
	Commands = "Mirror"
} )

return params:Load()