
return beat4sprite.Load {

	{
		File = "1st/Backgrounds/D2.png",
		Columns = { 0, 1 },	Rows = { -1, 0 },
		Zoom = 0.5,			Fade = { 0, 0 },
		EffectColors = { Color.White, Color.Orange }
	},

	{
		File = "1st/Sprites/H 5x4.png",		firstState = 2,
		Script = "WallBumps.lua"
	}

}