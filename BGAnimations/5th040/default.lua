local sub = ...

local pars = {

	FileTweak = BGA_G.BPath("5th001A"),

	{ 
		File = "5th/Sprites/HSV/DAB2 4x4.png",
		X_num = { -4, 3 },
		Y_num = { -2, 1 },
		Frame_i = 7,
		Frame_l = 8,
		Delay = 1,
		Commands = "StairsStates",
		Cleanup = true
	},

	{ Remove = true }

}
pars = BGA_G.Create(pars)
pars:ParTweak(sub)

return pars:Load()