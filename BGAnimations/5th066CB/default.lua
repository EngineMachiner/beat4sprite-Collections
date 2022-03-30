
local sub = ...

local params = BGA_G.Create( {

	{
		File = "/5th/Sprites/CAB 5x4.png",
		X_num = 5,		Y_num = { -2, 1 },
		Frame_i = 8
	},

	{
		File = "/5th/Sprites/CAB 5x4.png",
		Frame_i = 1,	Spin = true,
		Script = "SpaceEffects/Line.lua"
	}

} )

params:ParTweak( sub )

return params:Load()
