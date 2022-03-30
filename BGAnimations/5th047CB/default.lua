
local tweaks = {
	
	File = "5th/Sprites/HSV/DAB2 4x4.png",
	Frame_i = 10,
	Frame_l = 11,
	Commands = { "Move", "Rainbow" },
	Y_coord = 1,
	X_coord = 1,
	X_num = { -5, 4 },
	Y_num = 2
}

local params = BGA_G.Create( {

	File = "5th/Sprites/DA 4x3.png",
	Frame_i = 3,
	Frame_l = 4

} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th047A") )( tweaks ),
	loadfile( BGA_G.SPath .. "LineXY.lua" )( params )
}