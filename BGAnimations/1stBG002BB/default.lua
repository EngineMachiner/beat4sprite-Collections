
return loadfile( beat4sprite.Paths.getBGAFile("1stBG001") ) {

	{ Commands = "Mirror" },

	{
		File = "1st/Sprites/G 4x4.png",
		Columns = { -6, 5 },		Rows = { -2, 1 },
		States = { 9, 16 },			Cleanup = true,
		Blend = "BlendMode_Add",	MirrorX = true,
		Script = "Tile.lua"
	}

}