
local sub = ...

local tweaks = {

	{
		File = "5th/Sprites/CAB 5x4.png",
		firstState = 16,
		lastState = 20,
		Cleanup = true,
		Columns = 5,
		Rows = { -2, 1 }
	},

	{ Remove = true }

}

beat4sprite.tweak( tweaks,	sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( tweaks )