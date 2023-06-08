
local sub = ...

local tweaks = { scrollY = 1 }

beat4sprite.tweak( tweaks, sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th006AA") )( tweaks )
