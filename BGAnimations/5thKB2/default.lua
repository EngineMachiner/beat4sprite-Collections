
local params = BGA_G.Create( {

	{	
		File = "5th/Backgrounds/A.png",
		Script = "Kaleidoscopes/Comb.lua"
	},

	{
		File = "5th/Sprites/X2 5x1.png",
		X_num = 5,	Frame_i = 1,	Frame_l = 5,
		Commands = { "StairsStates", "SpinX" }
	}
	
} )

return params:Load()