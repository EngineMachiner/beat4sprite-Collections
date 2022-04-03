

local sub = ...

local params = BGA_G.Create( {
	File = "5th/Sprites/BA 4x3.png",
	Frame_i = 11,
	X_num = { -4, 3 },
	Y_num = 1
} )
params:ParTweak( sub )

local params_2 = params:Copy()
params_2:ParTweak( {
	Index = 1,
	File = "5th/Sprites/BAB 4x4.png",
	Y_num = { -2, 1 },	Speed = 2,
	Commands = "SpinXY"
} )
params_2.Index = 2
params_2:ParTweak( sub )


return Def.ActorFrame{
	params:Load(),	params_2:Load()
}