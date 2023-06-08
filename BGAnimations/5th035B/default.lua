
local params = {
	Index = 3,
	File = "5th/Sprites/DAB 4x4.png",
	firstState = 5,	lastState = 8,
	Move = "Right",	Cleanup = true,
	Script = "SpaceEffects/Particles.lua"
}

return loadfile( beat4sprite.Paths.getBGAFile("5th035A") )( params )