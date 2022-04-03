
local params = BGA_G.Create( {
	File = "5th/Sprites/DABC 4x4.png",
	Frame_i = 9,	Script = "LineXY.lua"
} )

return Def.ActorFrame{ 
	loadfile( BGA_G.BPath("5th039A") )(),
	params:Load()
}