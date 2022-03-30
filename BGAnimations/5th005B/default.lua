
local tweaks = {
	Index = 3,
	File = "5th/Sprites/B 4x3.png",
	Frame_i = 1,
	Frame_l = 6,
	Dir = "Left",
	Script = "Particles.lua",
	Random = true
}

return loadfile( BGA_G.BPath("5th005") )( tweaks )