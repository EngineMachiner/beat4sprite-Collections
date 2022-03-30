
local sub = ...

local params = BGA_G.Create( { 
    File = BGA_G.SongBGPath(),
    Script = "WarpingEffects/Bob.lua",
    Type = 2
} )

params:ParTweak( sub )

return params:Load()