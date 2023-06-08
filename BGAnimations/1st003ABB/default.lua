return beat4sprite.Load {

	{
		File = "1st/Sprites/Gradients/1stA 5x6.png",
		Columns = { -2, 1 },
		Rows = { -1, 0 },
		lastState = 30,	Zoom = 3,
		AnimationRate = 0.5,
		Commands = { "Mirror" }
	},

	{
		File = "1st/Sprites/N 4x1.png",
		States = { 2, 4 },	Zoom = 0.25,
		Script = "SpaceEffects/Line.lua",
		Commands = "StatePerSprite",
		AnimationTypes = "Static",
	}

}