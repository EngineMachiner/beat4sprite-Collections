return BGA_G.Load( {

	{
		File = "1st/Sprites/E 4x1.png",
		X_num = 1,
		Frame_l = 4,
		Delay = 0.25,
		BGMirror = true,
		Commands = { "Mirror" }
	},

	{
		File = "1st/Sprites/D 4x2.png",
		X_num = 2,
		Zoom = 0.5,
		Y_num = { -2, 1 },
		Frame_l = 8,
		Commands = { "Color", "MirrorYPerRow", "Blend" },
		Blend = "BlendMode_Add",
		Color = color("#FF0000")
	}

} )