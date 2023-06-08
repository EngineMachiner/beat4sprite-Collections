
local sub = ...

local params = beat4sprite.create( {

	{ 
		 
		File = "/5th/Backgrounds/CA.png",
		Cleanup = true,
		firstState = 1,
		Commands = "Mirror",
		MirrorX = true,
		Columns = 1
	},

	{ 
		File = "/5th/Sprites/CA 4x3.png",
		firstState = 8,
		Cleanup = true,
		Columns = { -4, 3 },
		Rows = 1,
		Commands = "SpinY"
	}

} )

	params:tweak( sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th051A") )( params )