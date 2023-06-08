
local params = beat4sprite.create( {
	File = "5th/Sprites/CAB 5x4.png",	firstState = 3,
	Script = "SpaceEffects/RoundTrace.lua",
	Type = "Spiral"
} )

local tweaks = { Index = 3, Remove = true }

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th042A") )( tweaks ),
	params:Load()
}