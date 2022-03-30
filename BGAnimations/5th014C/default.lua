
local sub = ...
local params = { Y_num = 2, Commands = "" }

local params_2 = BGA_G.Create( {
	Index = 3,
	File ="5th/Sprites/DABC 4x4.png",
	X_num = { -4, 3 },		Y_num = 2,
	HurryTweenBy = 1.5,		Commands = "Move",
	Y_coord = -1,	Frame_i = 1,	Frame_l = 2
} )

BGA_G.ParTweak(params, sub)
BGA_G.ParTweak(params_2, sub)

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th014A") )( params ),
	params_2:Load()
}