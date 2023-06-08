local tweaks = {

	{
		File = "5th/Sprites/AB 4x4.png",	firstState = 14,
		Columns = { -4, 3 },	Rows = { -2, 1 },
		Cleanup = true
	},

	{
		Index = 3,
		Columns = 2,	Rows = 1,
		Commands = { "Align", "RandomStates" }
	}

}

return loadfile( beat4sprite.Paths.getBGAFile("5th027A") )( tweaks )