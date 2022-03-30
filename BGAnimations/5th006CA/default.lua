
local params = BGA_G.Create( {
	File = "/5th/Sprites/DABCDE 4x3.png",
	Frame_i = 1,
	Frame_l = 12,
	Script = "LineXY.lua"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th006A") )(),
	BGA_G.Load(params)
}