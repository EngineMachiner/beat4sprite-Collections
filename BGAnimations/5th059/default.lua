
local sub = ...

local params = BGA_G.Create( {
	File = "5th/Sprites/DABC 4x4.png",
	X_num = { -4, 3 },
	Y_num = { -2, 1 },
	BGMirror = true,
	Commands = { "LineStates", "Mirror" },
	Frame_i = 7,
	Frame_l = 8
} )

params:ParTweak( sub )

return params:Load()