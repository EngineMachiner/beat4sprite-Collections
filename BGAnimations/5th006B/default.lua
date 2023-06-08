
local external = ...

local tweaks = { scrollY = 1 }

beat4sprite.tweak( tweaks, external )

return loadfile( beat4sprite.Paths.getBGAFile("5th006A") )( tweaks )