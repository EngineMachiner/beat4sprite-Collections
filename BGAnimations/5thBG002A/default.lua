
local sub = ...

local params = beat4sprite.create( {
	File = beat4sprite.GAMESTATE.getSongBG(),
	Columns = 1,		Type = 2,
	Script = "WarpingEffects/Spacing.lua",
	MirrorX = true
} )

params:tweak( sub )

return params:Load()