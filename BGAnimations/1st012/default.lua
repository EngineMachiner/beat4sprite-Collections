
LoadModule("beat4sprite/beat4sprite.lua")
return beat4sprite.Load {

	{
		File = "1st/Sprites/H 5x4.png",
		Columns = 5,		Rows = { -2, 1 },
		firstState = 5
	},

	{
		File = "1st/Sprites/H 5x4.png",		firstState = 16,
		Columns = { -6, 5 },	Rows = { -3, 2 },
		Color = "Rainbow",		TextureZoom = 0.625,
		Spin = true,			Script = "Texture.lua",
		Blend = 'add'
	}

}