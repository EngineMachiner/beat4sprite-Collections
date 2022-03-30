
local sub = ...

local params = BGA_G.Create( {
	File = BGA_G.SongBGPath(),
	X_num = 1,
	Script = "WarpingEffects/Flag.lua",
	BGMirror = true
} )

params:ParTweak(sub)

return params:Load()