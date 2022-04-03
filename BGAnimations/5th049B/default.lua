
local params = BGA_G.Create( {
	File = "5th/Sprites/BA 4x3.png",
	Frame_i = 9,	Dir = "Right",
	Script = "Particles.lua"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th049A") )(),
	params:Load()
}