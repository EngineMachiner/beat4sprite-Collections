
local params = BGA_G.Create( {
	File = "5th/Sprites/DA 4x3.png",
	Frame_i = 1,	Frame_l = 2,	
	Script = "SpaceEffects/RoundTrace.lua",
	Type = "Whirl"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th014A") )(),
	params:Load()
}