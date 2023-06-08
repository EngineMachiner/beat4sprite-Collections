
local params = beat4sprite.create {
	File = beat4sprite.GAMESTATE.getSongBG(),
	Script = "Kaleidoscopes/Single.lua",
	Reversed = true
}

return params:Load()