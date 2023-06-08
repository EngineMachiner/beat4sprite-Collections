
local sub = ...
local params = { Rows = 2, Commands = "" }

local params_2 = beat4sprite.create {
	Index = 3,
	File ="5th/Sprites/DABC 4x4.png",
	Columns = { -4, 3 },		Rows = 2,
	tweenRate = 1.5,			Commands = "Move",
	scrollY = -1,	firstState = 1,	lastState = 2
}

beat4sprite.tweak(params, sub)
beat4sprite.tweak(params_2, sub)

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th014A") )( params ),
	params_2:Load()
}