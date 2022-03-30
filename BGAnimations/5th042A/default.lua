
local sub = ...

local params = {

	FileTweak = BGA_G.BPath("5th001A"),

	{
		File = "5th/Sprites/CAB 5x4.png",
		X_num = 5,
		Y_num = { -2, 1 },
		Frame_i = 7,
		Cleanup = true
	},

	{ Remove = true }

}

params = BGA_G.Create(params)
params:ParTweak( sub )

local params_2 = BGA_G.Create( {
	Index = 3,
	File = "5th/Sprites/CAB 5x4.png",
	Frame_i = 3,	Spin = true,
	Script = "SpaceEffects/Line.lua"
} )

params_2:ParTweak( sub )

return Def.ActorFrame{ params:Load(), params_2:Load() }