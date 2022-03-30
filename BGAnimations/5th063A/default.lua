
local sub = ...

local params = BGA_G.Create( {
	Script = "Particles.lua",
	File = "/5th/Sprites/BA 4x3.png",
	Frame_i = 1,	Frame_l = 4,
	Dir = "Right",	Cleanup = true
} )

params:ParTweak( sub )
params.Index = 2

return loadfile( BGA_G.BPath("5th052") )( params )