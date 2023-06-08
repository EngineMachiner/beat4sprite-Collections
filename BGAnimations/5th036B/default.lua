
local tweaks = {

	{
		Index = 1,
		scrollX = 0,	scrollY = 0,
		posX = 0,	Columns = 5,
		Rows = { -2, 1 }
	},

	{
		Index = 3,
		scrollX = -1,	scrollY = -1,
		posX = -0.5,	Columns = { -4, 6 },
		Rows = 2,	AnimationRate = 2,
		Commands = "Move"
	}

}

return loadfile( beat4sprite.Paths.getBGAFile("5th036A") )( tweaks )