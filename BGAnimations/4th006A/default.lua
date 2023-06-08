
local tweaks = {

	{	
		File = {	
			"4th/Backgrounds/F.png",
			"4th/Backgrounds/F2.png"
		},
		Columns = 1,		MirrorX = true,
		posX = -0.4
	},

	{ Remove = true }

}

return loadfile( beat4sprite.Paths.getBGAFile("4th001A") )( tweaks )