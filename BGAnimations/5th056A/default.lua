
local tweaks = ...

local params = BGA_G.Create( {
	
	File = "/5th/Backgrounds/BABC 2x2.png",
	Frame_i = 1,
	X_num = { -2, 1 },
	Y_num = { -1, 0 }
} )
params:ParTweak( tweaks )

local params_2 = BGA_G.Create( {
	Index = 2,
	File = "/5th/Sprites/BAB 4x4.png",
	Frame_i = 9,
	Dir = "Right",
	Script = "Particles.lua"
} )
params_2:ParTweak( tweaks )

return Def.ActorFrame{
	params:Load(),		params_2:Load()
}