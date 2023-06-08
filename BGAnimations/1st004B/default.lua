return beat4sprite.Load {

	{
		File = "1st/Sprites/Gradients/1stAfro 3x5.png",
		Columns = 1,
		Rows = { -2, 0 },
		lastState = 15,
		Commands = "Mirror",
		Zoom = 2.5,
		MirrorX = true
	},

	{
		File = "1st/Sprites/HSV/B 4x1.png",
		Columns = 1,	lastState = 4,
		AnimationRate = 0.25,	MirrorX = true,
		Commands = { "Mirror", "Rainbow" }
	}

}