
local sub = ...

local params = beat4sprite.create { 
    File = beat4sprite.GAMESTATE.getSongBG(),
    Script = "WarpingEffects/Bob.lua",
    Type = 2
}

params:tweak( sub )

return params:Load()