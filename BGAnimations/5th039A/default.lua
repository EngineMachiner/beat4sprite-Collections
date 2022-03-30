
local sub = ...

local pars = {

	FileTweak = BGA_G.BPath("5th001A"),

	{ 
		File = "5th/Sprites/DA 4x3.png",
		X_num = { -4, 3 },	Y_num = { -2, 1 },
		Y_coord = -1,	Frame_i = 12,
		Delay = 2,	Commands = "Move",
		Cleanup = true
	},

	{ Remove = true }

}

pars = BGA_G.Create( pars )
pars:ParTweak( sub )

return pars:Load()