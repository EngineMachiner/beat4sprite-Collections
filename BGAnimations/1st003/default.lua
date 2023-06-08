return beat4sprite.Load {

	{
		File = "1st/Sprites/Gradients/1stA 5x6.png",
		Columns = { -2, 1 },
		Rows = { -1, 0 },
		lastState = 30,
		Zoom = 3,
		AnimationRate = 0.5,
		Commands = { "Mirror" }
	},

	{
		File = "1st/Sprites/H 5x4.png",
		Script = "SpaceEffects/Line.lua",
		Flat = true, 	Move = "Out",
		Commands = "StatePerSprite",
		AnimationTypes = "Static",
		firstState = 14, lastState = 15
	}

}