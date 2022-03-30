
local sub = ...

local params = BGA_G.Create( {

	{
		File = "/5th/Sprites/A 4x3.png",
		Frame_i = 7,	Frame_l = 8,
		X_num = { -4, 3 },	Y_num = 1,
		Delay = 0.5,	Speed = 2
	},

	{
		File = "/5th/Sprites/AB 4x4.png",
		Frame_i = 1,	Frame_l = 2,	X_num = 4,
		Y_num = { -2, 1 },	X_coord = 1,
		Commands = "Move",	Delay = 0.5,
		Speed = 2
	}

} )

params:ParTweak( sub )

return params:Load()