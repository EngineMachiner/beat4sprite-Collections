return beat4sprite.Load {

	{
		File = "1st/Sprites/Gradients/B001 5x3.png",
		Columns = { -2, 1 },
		Rows = { -1, 0 },
		lastState = 15,
		Zoom = 1.5,
		AnimationRate = 0.5,
		Commands = { "Rainbow", "Mirror" }
	},

	{
		File = "1st/Sprites/F 32x4.png",
		Script = "SpaceEffects/Line.lua",
		Flat = true,	Blend = 'add',
		Commands = "StatePerSprite",
		AnimationTypes = "Static",
		Alpha = 0.75,	States = { 1, 32 }
	}

}