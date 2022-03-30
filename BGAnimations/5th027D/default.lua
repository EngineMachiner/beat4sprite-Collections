
local params = BGA_G.Create( {
	File = "5th/Sprites/ABC 4x4.png",
	Frame_l = 4,
	Script = "SpiralStaticTrace.lua"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th027A") )( { Index = 2, Remove = true } ),
	params:Load()
}