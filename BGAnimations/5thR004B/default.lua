
local params = BGA_G.Create( {
	File = "5th/Sprites/Gradients/C001 4x4.png",
	X_num = { -2, 1 },	Y_num = { -1, 0 },
	Frame_l = 15,	Zoom = 2,
	Commands = "Mirror"
} )

return params:Load()