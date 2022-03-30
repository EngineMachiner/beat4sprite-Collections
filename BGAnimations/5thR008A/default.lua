
local params = BGA_G.Create( {
	File = "5th/Sprites/Gradients/G001 8x8.png",
	X_num = { -2, 1 },	Y_num = { -1, 0 },
	Frame_l = 1,	Frame_i = 60,
	Zoom = 4,	Delay = 4,
	Commands = { "Mirror" }
} )

return params:Load()