
local tweaks = ...

local params = BGA_G.Create( {

	{	
		File = "5th/Backgrounds/CA.png",
		X_num = 1,	BGMirror = true,
		Commands = "Mirror"
	},

	{
		File = "5th/Sprites/C 4x4.png",
		X_num = { -4, 3 },	Y_num = { -2, 1 },
		Frame_i = 1,	Frame_l = 16
	}

} ) 
 	
params:ParTweak( tweaks )

return params:Load()