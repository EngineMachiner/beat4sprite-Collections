
local sub = ...

local tweaks = {

	{
		File = "/5th/Sprites/AB 4x4.png",
		Frame_i = 7,
		Frame_l = 8,
		X_num = { -4, 3 },
		Y_num = { -2, 1 },
		Cleanup = true
	},

	{ Remove = true }

}

local a = loadfile( BGA_G.BPath("5th001A") )( tweaks )

local params = BGA_G.Create( {
	Index = 3,
	File = "/5th/Sprites/ABC 4x4.png",
	X_num = { -5, 4 },
	Y_num = { -2, 1 },
	Frame_i = 5,
	Frame_l = 8,
	Commands = "RandomDelays"
} )

params:ParTweak( sub )

return Def.ActorFrame{ a, BGA_G.Load(params) }