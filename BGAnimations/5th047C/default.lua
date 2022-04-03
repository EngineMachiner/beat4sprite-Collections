
local tweaks = {
	File = "5th/Sprites/HSV/DAB2 4x4.png",
	Frame_i = 10,	Frame_l = 11,
	Commands = { "Move", "Rainbow" },
	Y_coord = 1,	X_coord = 1,
	X_num = { -5, 4 },	Y_num = 2
}

local params = BGA_G.Create( {
	File = "5th/Sprites/DABC 4x4.png",
	Frame_i = 9,	Frame_l = 10,
	Commands = "TwoSprites",
	Script = "LineXY.lua"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th047A") )( tweaks ),
	params:Load()
}