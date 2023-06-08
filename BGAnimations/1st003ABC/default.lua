return beat4sprite.Load {

	{
		File = "1st/Sprites/A 1x8.png",
		Columns = 1,
		Rows = { -4, 3 },
		lastState = 8,
		Color = color("#00FFFF")
	},

	{
		File = "1st/Sprites/Gradients/1stABC 5x6.png",
		Columns = { -2, 1 },
		Rows = { -1, 0 },
		lastState = 30,
		Blend = 'add',
		Zoom = 3,
		AnimationRate = 0.5,
		Commands = { "Mirror" }
	},

}