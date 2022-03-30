
local params = BGA_G.Create( {
	File = "5th/Sprites/BABC 5x4.png",
	Frame_i = 1,
	Frame_l = 20,
	Commands = "RandomStates",
	X_num = 5,
	FrmDelay = 1,
	Y_num = { -2, 1 }
} )

return params:Load()