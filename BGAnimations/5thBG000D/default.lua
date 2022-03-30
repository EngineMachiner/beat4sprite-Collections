
local sub = ...

local params = BGA_G.Create( {
	File = BGA_G.SongBGPath(),
	Commands = { "Mirror", "Move" },
	X_num = 1,	Y_num = 1,
	MultipleFiles = { 2, 2 },
	Y_coord = -1,
} )

params:ParTweak( sub )

return params:Load()