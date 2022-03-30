
local sub = ...

local params = BGA_G.Create( {
	{	
		File = "5th/Sprites/DABCDE 4x3.png",
		Frame_i = 1,	Frame_l = 12,
		FrmDelay = 2,
		Commands = { "Move", "Cross", "StairsStates" },
		X_pos = 1,	X_num = 6,
		Y_num = 1,	X_coord = 1,
		StopAtFrame = 2, HurryTweenBy = 0.25
	}
} )

params[2] = params[1]:Copy()
params[2]:ParTweak( {
	File = "5th/Sprites/HSV/DABCDE 4x3.png",
	X_pos = 0,	FrmDelay = nil
} )

params:ParTweak(sub)

return params:Load()