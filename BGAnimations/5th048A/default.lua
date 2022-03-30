
local sub = ...

local t = Def.ActorFrame{}

local params = {

	FileTweak = BGA_G.BPath("5th001A"),

	{ Remove = true },

	{
		File = { 
			"5th/Backgrounds/CABC2.png",
			"5th/Backgrounds/CABC.png"
		}
	}

}
BGA_G.ParTweak( params, sub )
BGA_G.Load( params, t )

params = BGA_G.Create( {
	Index = 3,
	File = "5th/Sprites/HSV/DA 4x3.png",
	Frame_i = 5,
	X_num = { -4, 3 },
	Y_num = 1,
	Commands = "ZWrite"
} )
params:ParTweak( sub )
params:Load(t)

params = BGA_G.Create( {
	Index = 4,
	File = "5th/Sprites/HSV/DA 4x3.png",
	Frame_i = 4,
	X_num = { -4, 3 },
	Y_num = { -1, 2 },
	Y_coord = 1,
	Commands = { "ZTest", "Move" }
} )
params:ParTweak( sub )
params:Load(t)

return Def.ActorFrame{ t }
