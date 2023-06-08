
local sub = ...

local params = beat4sprite.create( {
	File = beat4sprite.GAMESTATE.getSongBG(),
	Columns = 1,	Commands = "Mirror",
	MirrorX = true
} )

params:tweak( sub )

return params:Load()