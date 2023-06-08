
local sub = ...

local params = { AnimationRate = 2 }

beat4sprite.tweak( params, sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th014A") )( params )