
local sub = ...

local params = BGA_G.Create( {
	File = "5th/Sprites/D 5x4.png",
	Frames = { 1, 20, Type = "OnlyRow" },
	Y_num = { -3, 4 },
	X_num = 5,
	Commands = { "Move", "StairsStates" },
	Y_coord = -1
} )

params:ParTweak( sub )

return params:Load()