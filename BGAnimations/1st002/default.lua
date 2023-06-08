
return beat4sprite.Load {

	{
		File = "1st/Sprites/H 5x4.png",
		Columns = 4,		Rows = { -1, 2 },
		firstState = 4
	},

	{
		File = "1st/Sprites/M 5x4.png",
		Script = "SpaceEffects/Line.lua",
		Commands = "StatePerSprite",
		AnimationTypes = "Static",
		lastState = 6
	}

}