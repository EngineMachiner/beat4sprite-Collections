
local params = BGA_G.Create( {
	File = "5th/Sprites/CAB 5x4.png",	Frame_i = 3,
	Script = "SpaceEffects/RoundTrace.lua",
	Type = "Spiral"
} )

local tweaks = { Index = 3, Remove = true }

return Def.ActorFrame{

	loadfile( BGA_G.BPath("5th042A") )( tweaks ),
	params:Load()

}