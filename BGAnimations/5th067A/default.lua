
local sub = ...

local params = BGA_G.Create( {

	{ 
		 
		File = "/5th/Backgrounds/CA.png",
		Cleanup = true,
		Frame_i = 1,
		Commands = "Mirror",
		BGMirror = true,
		X_num = 1
	},

	{ 
		File = "/5th/Sprites/CA 4x3.png",
		Frame_i = 8,
		Cleanup = true,
		X_num = { -4, 3 },
		Y_num = 1,
		Commands = "SpinY"
	}

} )

	params:ParTweak( sub )

return loadfile( BGA_G.BPath("5th051A") )( params )