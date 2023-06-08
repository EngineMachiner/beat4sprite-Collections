
local external = ...

local tweaks = beat4sprite.create {
	
	{ Remove = true },

	{
		File = { "5th/Backgrounds/ABC2.png",		"5th/Backgrounds/ABC.png" },
		scrollY = -1,			Cleanup = true
	}

}

tweaks:tweak( external )

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( tweaks )