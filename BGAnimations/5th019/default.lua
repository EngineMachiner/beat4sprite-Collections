
local tweaks = {

	{
		File = "5th/Sprites/ABC 4x4.png",
		firstState = 13,
		lastState = 16,
		Columns = { -4, 3 },
		Rows = { -2, 1 },
		Cleanup = true
	},

	{ Remove = true }

}

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( tweaks )