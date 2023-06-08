
local tweaks_2 = ...

local tweaks = beat4sprite.create {

	{
		File = "5th/Sprites/DABC 4x4.png",
		Columns = { -4, 3 },	Rows = 2,		scrollY = 1,
		firstState = 14,		Cleanup = true,
		Commands = "Move"
	},

	{ Remove = true }

}

tweaks:tweak( tweaks_2 )

return loadfile( beat4sprite.Paths.getBGAFile("5th003A") )( tweaks )