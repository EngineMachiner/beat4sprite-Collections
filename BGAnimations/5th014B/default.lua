
local params = BGA_G.Create( {
	Frame_i = 7,	Frame_l = 8,
	Commands = "Move",	SleepMove = true,
	X_coord = -1,	Y_coord = -1,
	X_num = { -4, 5 },	Y_num = { -1, 2 }
} )

local params_2 = BGA_G.Create( {
	File ="5th/Sprites/DA 4x3.png",
	Frame_i = 1,
	Frame_l = 2,
	Script = "SpaceEffects/RoundTrace.lua"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th014AB") )( params ),
	params_2:Load()
}