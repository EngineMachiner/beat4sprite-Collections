
local sub = ...

local params = BGA_G.Create( {

	FileTweak = BGA_G.BPath("5th001A"),

	{
		File = "5th/Sprites/BAB 4x4.png",
		X_num = { -4, 3 },	Y_num = { -2, 1 },
		Frame_i = 5,	Frame_l = 6,
		Cleanup = true
	},

	{ Remove = true	}

} )

local params_2 = BGA_G.Create( {
	Index = 3,
	File = "5th/Sprites/B 4x3.png",
	Frame_i = 1,	Frame_l = 6,
	Script = "WallBumps.lua"
} )

params:ParTweak( sub )
params_2:ParTweak( sub )

return Def.ActorFrame{ params:Load(), params_2:Load() }
