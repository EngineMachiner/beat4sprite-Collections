
local tweaks = {
	Index = 3,			File = "5th/Sprites/B 4x3.png",
	firstState = 1,		lastState = 6,
	Script = "SpaceEffects/Particles.lua"
}

return loadfile( beat4sprite.Paths.getBGAFile("5th005") )( tweaks )