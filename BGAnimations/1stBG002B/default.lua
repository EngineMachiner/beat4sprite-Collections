
return loadfile( beat4sprite.Paths.getBGAFile("1stBG001") ) {

	{ Commands = "Mirror" },

	{
		File = "1st/Sprites/G 4x4.png",
		Columns = { -6, 5 },	Rows = { -3, 2 },
		firstState = 9,			Cleanup = true,				Blend = "BlendMode_Add",
		Commands = "Alpha",		TextureZoom = 0.625,		Spin = true,			
		Script = "Texture.lua"
	}

}