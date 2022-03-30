
local sub = ...

local params = { Delay = 2 }

BGA_G.ParTweak( params, sub )

return loadfile( BGA_G.BPath("5th014A") )( params )