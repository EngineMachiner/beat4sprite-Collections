
local params = beat4sprite.create( {
	File = "5th/Sprites/DA 4x3.png",
	firstState = 1,	lastState = 2,	
	Script = "SpaceEffects/RoundTrace.lua",
	Type = "Whirl"
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th014A") )(),
	params:Load()
}