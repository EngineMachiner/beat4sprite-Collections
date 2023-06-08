return beat4sprite.Load {

	{
		File = "1st/Sprites/Gradients/1stAB 5x6.png",
		Columns = { -2, 1 },
		Rows = { -1, 0 },
		lastState = 30,	Zoom = 3,
		AnimationRate = 0.5,
		Commands = "Mirror"
	},

	{
		File = "1st/Sprites/H 5x4.png",
		firstState = 16,	Move = "Out",
		Slices = 5,		StaticAngle = true,		Color = color("0,0,1,1"),
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral"
	}

}