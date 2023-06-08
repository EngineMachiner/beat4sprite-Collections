return beat4sprite.Load {

	{
		File = "/1st/Sprites/Gradients/1stBall 3x5.png",
		Columns = 1, States = { 1, 15 }, Zoom = 5, MirrorX = true
	},

	{
		File = "1st/Sprites/D 4x2.png",
		Columns = 2, Zoom = 0.5, Rows = { -2, 1 },
		lastState = 8,		MirrorX = "Rows",
		Commands = { "Color", "Blend" },
		Blend = "BlendMode_Add", Color = color("#00FF00")
	}

}