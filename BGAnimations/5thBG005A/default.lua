
local sub = ...

local params = beat4sprite.create {
	File = beat4sprite.GAMESTATE.getSongBG(),		Script = "WarpingEffects/Wag.lua",
}

params:tweak( sub )

return params:Load()
