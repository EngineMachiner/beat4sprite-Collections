
local sub = ...

local params = BGA_G.Create( {
	File = "5th/Sprites/DANCE 1x5.png",
	Frame_i = 1,	Frame_l = 4,
	Commands = { "FramePerSprite", "StairsStates", "Move" },
	X_coord = -1,	HurryTweenBy = 8,
	X_num = { -1, 5 },	X_pos = 1,
	Y_num = 2
} )

params:ParTweak( sub )

return params:Load()