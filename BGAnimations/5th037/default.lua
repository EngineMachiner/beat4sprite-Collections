
local sub = ...

local pars = {

	FileTweak = BGA_G.BPath("5th001A"),

	{ 
		File = "5th/Sprites/AB 4x4.png",
		X_num = { -4, 3 },
		Y_num = { -2, 1 },
		Delay = 2,
		Frame_i = 14,
		Frame_l = 15,
		Cleanup = true
	},

	{ Remove = true }

}

pars = BGA_G.Create(pars)

pars:ParTweak(sub)

return pars:Load()