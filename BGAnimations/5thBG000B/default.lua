
local sub = ...

local params = BGA_G.Create( {
	File = BGA_G.SongBGPath(),
	X_num = { -2, 2 },
	Commands = { "Mirror", "Move" },
	BGMirror = true,	X_coord = -1
} )

params:ParTweak( sub )

return params:Load()