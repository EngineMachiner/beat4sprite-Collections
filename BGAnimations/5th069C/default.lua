
local params = BGA_G.Create( {
	Script = "SpaceEffects/Line.lua",
	File = "5th/Sprites/CAB 5x4.png",
	Frame_i = 2,	Dir = "Out"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th069A") )(),
	params:Load()
}