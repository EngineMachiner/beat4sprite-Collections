
local tweaks = {

	{ Remove = true },

	{
		File = {
			"5th/Backgrounds/ABC2.png",
			"5th/Backgrounds/ABC.png"
		},
		Y_coord = 1,
		Commands = "Move"
	}

}

return loadfile( BGA_G.BPath("5th002A") )( tweaks )