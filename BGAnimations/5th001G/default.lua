
local external = ...

local tweaks = beat4sprite.create {

	{
		File = "5th/Backgrounds/B.png",
		Columns = { -1, 1 },
		Commands = "Mirror",
		MirrorX = true,
		Cleanup = true
	},	
	
	{}

}

tweaks:tweak( external )

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( tweaks )