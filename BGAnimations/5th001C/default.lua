
local external = ...

local tweaks = beat4sprite.create {

	{
		File = "5th/Backgrounds/BABC 2x2.png",
		Commands = "Mirror",
		Columns = { -2, 1 },
		Rows = { -1, 0 },
		firstState = 2,
		Cleanup = true
	},
	
	{}

}

tweaks:tweak(external)

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( tweaks )