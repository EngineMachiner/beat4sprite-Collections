
local sub = ...

local tweaks = {

	{ 
		File = "5th/Backgrounds/D.png",
		Columns = { -1, 2 },
		scrollX = -1,
		Cleanup = true
	},

	{ Remove = true }

}

beat4sprite.tweak( tweaks, sub )
	
return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( tweaks )