
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/BAB 4x4.png",
		Frame_i = 14,	X_num = { -4, 3 },
		Y_num = { -2, 1 }
	}

} )
params[2] = params[1]:Copy()
params[2]:ParTweak( {
	File = "5th/Sprites/BAB 4x4.png",
	Frame_i = 10,	Y_num = { -2, 1 },
	Speed = 2,	Commands = "SpinXY"
} )
params:ParTweak( sub )

return params:Load()