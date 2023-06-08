
local params = beat4sprite.create( {
	File = "5th/Sprites/BA 4x3.png",
	firstState = 10,	Move = "Down",
	Script = "SpaceEffects/Particles.lua"
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th049A") )(),
	params:Load()
}