
local sub = ...

local params = BGA_G.Create( {
	File = BGA_G.SongBGPath(),
	X_num = 1,		Type = 2,
	Script = "WarpingEffects/Spacing.lua",
	BGMirror = true
} )

params:ParTweak( sub )

return params:Load()