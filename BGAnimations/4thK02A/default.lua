
local args = ...

local params = BGA_G.Create( {

	{	
		File = "/4th/Backgrounds/F2.png",
		Script = "Kaleidoscopes/Main.lua"
	},

	{	
		File = "/4th/Sprites/BAB 5x4.png",
		Frames = 2,	X_num = 6,	Y_num = 2,
		TCV = { -1, -1 }
	}

} )

params:ParTweak( args )

return params:Load()