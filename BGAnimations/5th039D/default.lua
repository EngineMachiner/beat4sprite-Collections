

local params = BGA_G.Create( {
	File = "/5th/Sprites/DABC 4x4.png",
	Frame_i = 9,	Frame_l = 10,
	Commands = "TwoSprites",
	Script = "LineXY.lua"
} )

local params_2 = BGA_G.Create( {
	File = "/5th/Sprites/HSV/DA 4x3.png",
	Frame_i = 3,	X_num = 5,	 X_coord = -1,
	Commands = { "Move", "Rainbow" }
} )

return Def.ActorFrame{ 
	loadfile( BGA_G.BPath("5th039A") )( params_2 ),
	params:Load()
}