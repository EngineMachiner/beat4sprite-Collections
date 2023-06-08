
local sub = ...

local params = beat4sprite.create( {
	File = "5th/Sprites/DABC 4x4.png",
	Columns = { -4, 3 },
	Rows = { -2, 1 },
	MirrorX = true,
	Commands = { "LineStates", "Mirror" },
	firstState = 7,
	lastState = 8
} )

params:tweak( sub )

return params:Load()