return loadfile( beat4sprite.Paths.getBGAFile("1stBG001") ) {

	{
		Commands = { "Mirror", "Fade" },
		Fade = { 0, 1 }
	},

	{
		File = "1st/Sprites/H 5x4.png",
		Columns = { -6, 5 },		Rows = { -3, 2 },
		firstState = 6,				Cleanup = true,
		TextureZoom = 0.625,		Spin = true,			Script = "Texture.lua"
	}

}

