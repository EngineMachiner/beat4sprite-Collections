
local args = ...

local params = BGA_G.Create( {
	File = "4th/Sprites/B2 5x4.png",
	X_num = 4,
	Y_num = { -2, 1 },
	Frames = { 1, 15 },
	Delay = 2,
	Commands = { "RandomStates" }
} )

params:ParTweak( args )

return params:Load()