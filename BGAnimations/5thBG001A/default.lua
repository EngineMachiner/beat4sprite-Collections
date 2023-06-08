
local sub = ...

local params = beat4sprite.create {
	File = beat4sprite.GAMESTATE.getSongBG(),
	Script = "WarpingEffects/Pulse.lua",
}

params:tweak( sub )

return params:Load()