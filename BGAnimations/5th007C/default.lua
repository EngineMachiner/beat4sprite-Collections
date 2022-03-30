
local params = BGA_G.Create( { 
	File = "/5th/Sprites/DABC 4x4.png",
	Frame_i = 3,
	Frame_l = 4,
	Script = "LineXY.lua"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th007B") )(),
	params:Load()
}