
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
		File = "1st/Sprites/HSV/B 4x1.png",
		X_num = 1,	Frame_l = 4,
		Delay = 0.25,	BGMirror = true,
		Commands = { "Mirror", "Rainbow" }
	}

} )

return params:Load()