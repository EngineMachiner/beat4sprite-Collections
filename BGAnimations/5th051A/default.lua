

local sub = ...

local params = beat4sprite.create( {
	File = "5th/Sprites/BA 4x3.png",
	firstState = 11,
	Columns = { -4, 3 },
	Rows = 1
} )
params:tweak( sub )

local params_2 = params:copy()
params_2:tweak( {
	Index = 1,
	File = "5th/Sprites/BAB 4x4.png",
	Rows = { -2, 1 },	tweenRate = 2,
	Commands = "SpinXY"
} )
params_2.Index = 2
params_2:tweak( sub )


return Def.ActorFrame{
	params:Load(),	params_2:Load()
}