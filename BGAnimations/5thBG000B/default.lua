
local sub = ...

local params = beat4sprite.create {
	File = beat4sprite.GAMESTATE.getSongBG(),		Columns = 2,
	scrollX = -1, 	MirrorX = true
}

params:tweak( sub )

return params:Load()