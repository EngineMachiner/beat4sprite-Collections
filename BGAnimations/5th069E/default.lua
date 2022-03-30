

local params = BGA_G.Create( {
	Script = "SpaceEffects/RoundTrace.lua",	Type = "Spiral",
	File = "5th/Sprites/CAB 5x4.png",
	Frame_i = 2,	SprtSpin = true
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th069A") )(),
	params:Load()
}