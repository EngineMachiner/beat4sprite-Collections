
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/I 4x4.png",
		X_num = 2,
		Y_num = { -2, 1 },
		Frame_l = 16,
		Commands = { "Color", "MirrorYPerRow", "Blend" },
		Blend = "BlendMode_Add",
		Color = color("#00FF00")
	},

	{
		File = "1st/Sprites/HSV/B 4x1.png",
		X_num = 1,	Frame_l = 4,
		Delay = 0.25,	BGMirror = true,
		Commands = { "Mirror" }
	}

} )

return params:Load()