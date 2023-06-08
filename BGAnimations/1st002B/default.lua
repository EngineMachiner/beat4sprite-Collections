return beat4sprite.Load {

	{
		File = "1st/Sprites/Gradients/1stCobweb 8x8.png",
		Columns = 2,				Rows = { 0, 1 },
		firstState = 1,				lastState = 60,
		Zoom = 4,					AnimationRate = 2,
		Commands = "Mirror",		Blend = "BlendMode_Add",
		Actors = beat4sprite.Sprite.colorQuad( Color.Black ) .. { onBackground = true },
		posX = - 0.5
	},

	{
		File = "1st/Sprites/M 5x4.png",
		Script = "SpaceEffects/Line.lua",
		Commands = "StatePerSprite",
		AnimationTypes = "Static",
		lastState = 6
	}

}