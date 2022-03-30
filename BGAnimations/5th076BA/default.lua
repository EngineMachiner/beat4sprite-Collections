
local tweaks = ...

local params = BGA_G.Create( {

	{
		File = "/5th/Sprites/DA 4x3.png",
		Frame_i = 11,	Frame_l = 12,
		X_num = { -5, 4 },
		Y_num = 1
	},

	{
		File = "/5th/Sprites/DABC 4x4.png",
		Frame_i = 10,	Clockwise = true,
		Script = "SpaceEffects/RoundTrace.lua",	
		Type = "Spiral"
	}

} )
	params:ParTweak( tweaks )
	
return params:Load()