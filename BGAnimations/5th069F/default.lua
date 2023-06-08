
local params = beat4sprite.create( {
	Script = "SpaceEffects/Bounce.lua",
	File = "5th/Sprites/CAB 5x4.png",
	firstState = 2,
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th069A") )(),
	params:Load()
}