
local tweaks = {

	{ Remove = true },

	{
		File = {
			"5th/Backgrounds/ABC2.png",
			"5th/Backgrounds/ABC.png"
		},
		scrollY = 1
	}

}

return loadfile( beat4sprite.Paths.getBGAFile("5th002A") )( tweaks )