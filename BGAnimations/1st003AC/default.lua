return beat4sprite.Load {

	{
		File = "1st/Sprites/Gradients/dance 3x5.png",
		Columns = 1,
		lastState = 15,
		AnimationRate = 4,
		Zoom = 5,
		MirrorX = true
	},

	{
		File = "1st/Sprites/G 4x4.png",
		Script = "SpaceEffects/Line.lua",
		Blend = "BlendMode_Add",
		tweenRate = 0.25,
		Move = "Out",	States = { 1, 8 }
	}

}