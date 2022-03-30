
local params = {
	Index = 3,
	File = "5th/Sprites/DAB 4x4.png",
	Frame_i = 5,	Frame_l = 8,
	Dir = "Right",	Cleanup = true,
	Script = "Particles.lua"
}

return loadfile( BGA_G.BPath("5th035A") )( params )