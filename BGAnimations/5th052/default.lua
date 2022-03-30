
local sub = ...

local params = BGA_G.Create( {
	{	
		File = "5th/Sprites/BAB 4x4.png",
		Frame_i = 16,
		X_num = { -4, 3 },
		Y_num = { -2, 1 }
	}
} )

params[2] = params[1]:Copy()
params[2]:ParTweak( {
	Frame_i = 1,	Frame_l = 2,
	Speed = 2,	Commands = "SpinX"
} )

params:ParTweak( sub )

return params:Load()