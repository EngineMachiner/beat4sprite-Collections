
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/Gradients/1stAfro 3x5.png",
		X_num = 1,
		Y_num = { -2, 0 },
		Frame_l = 15,
		Commands = "Mirror",
		Zoom = 2.5,
		BGMirror = true
	},

	{
		File = "1st/Sprites/K 1x2.png",
		X_num = 1,
		Y_num = 1,
		Spacing = { 1.46, 1.46 },
		Frame_l = 2,	FrmDelay = 1,
		Zoom = 0.375
	}

} )

return params:Load()