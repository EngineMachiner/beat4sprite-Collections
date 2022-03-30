
local sub = ...

local params = BGA_G.Create( {

	FileTweak = BGA_G.BPath("5th001A"),

	{ 
		File = "5th/Sprites/CAB 5x4.png",
		X_num = { -5, 6 },		Y_num = 2,
		Frame_i = 9,	X_coord = -1,
		Y_coord = -1,	Delay = 2,
		Commands = "Move",	Cleanup = true
	},

	{ Remove = true }

} )

local params_2 = BGA_G.Create( {
	Index = 3,
	File = "5th/Sprites/CAB 5x4.png",
	Frame_i = 1,	X_num = 5,
	Y_num = { -2, 1 }
} )

params:ParTweak( sub )
params_2:ParTweak( sub )
	
return Def.ActorFrame{ params:Load(), params_2:Load() }