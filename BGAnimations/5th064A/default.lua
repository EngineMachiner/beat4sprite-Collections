
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/CAB 5x4.png",
		Frame_i = 6,	X_num = 5,
		Y_num = { -2, 1 }
	},

	{
		File = "/5th/Sprites/CA 4x3.png",
		Frame_i = 9,	Cleanup = true,
		Dir = "Right",	Script = "Particles.lua"
	}

} )

params:ParTweak( sub )

return params:Load()