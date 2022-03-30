
local params = BGA_G.Create( {

	{
		File = "/5th/Sprites/DA 4x3.png",
		Frame_i = 11,	Frame_l = 12,
		X_num = { -5, 4 },	Y_num = 1
	},

	{
		File = "/5th/Sprites/DABC 4x4.png",
		Frame_i = 9,	Script = "SpaceEffects/RoundTrace.lua",
		Clockwise = true
	},

	{	
		File = "/5th/Sprites/DABC 4x4.png",
		Frame_i = 9,	Dir = "Out",
		Script = "SpaceEffects/RoundTrace.lua"
	}

} )
	
return loadfile( BGA_G.BPath("5th024ADB") )( params )