
local tweaks = {

	{
		File = "5th/Sprites/ABC 4x4.png",
		firstState = 9,
		lastState = 12,
		Columns = { -4, 3 },
		Rows = { -2, 1 },
		Cleanup = true
	},

	{ Remove = true } 

}

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( tweaks )