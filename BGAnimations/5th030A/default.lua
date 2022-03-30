
local params = BGA_G.Create( {
	Index = 2,
	File = "5th/Sprites/BA 4x3.png",
	Frame_i = 9,
	Frame_l = 10,
	Commands = "TwoSprites",
	Script = "LineXY.lua"
} )

return loadfile( BGA_G.BPath("5th001G") )( params )