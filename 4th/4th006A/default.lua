
local tweaks = {

	{	
		File = {	
			"4th/Backgrounds/F.png",
			"4th/Backgrounds/F2.png"
		},
		BGMirror = true
	},

	{ Remove = true }

}

return loadfile( BGA_G.BPath("4th001A") )( tweaks )