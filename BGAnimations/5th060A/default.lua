
local sub = ...

local params = BGA_G.Create( {
	File = "5th/Sprites/BA 4x3.png",
	Frame_i = 12,	X_num = { -4, 3 },
	Y_num = 1
} )

local params_2 = BGA_G.Create( {
	Index = 2,
	File = "5th/Sprites/B 4x3.png",
	Frame_i = 1,	Frame_l = 6,	Dir = "Left",
	Script = "Particles.lua"
} )

params:ParTweak( sub )
params_2:ParTweak( sub )

return Def.ActorFrame{
	params:Load(),	params_2:Load()
}