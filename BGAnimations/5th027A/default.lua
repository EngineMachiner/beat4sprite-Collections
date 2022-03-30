
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/ABCDE 1x4.png",
		X_num = 1,
		Y_num = { -2, 1 },
		Frame_l = 4,
		Cleanup = true
	},

	{ Remove = true }

} )

params:ParTweak( sub )

local params_2 = BGA_G.Create( {
	Index = 2,
	File = "5th/Sprites/ABC 4x4.png",
	Frame_l = 4,
	X_num = { -4, 3 },
	Y_num = { -2, 1 },
	Commands = "RandomDelays"
} )

local t = Def.ActorFrame{
	loadfile( BGA_G.BPath("5th001A") )( params )
}

params_2:ParTweak( sub )
params_2:Load(t)

return Def.ActorFrame{ t }