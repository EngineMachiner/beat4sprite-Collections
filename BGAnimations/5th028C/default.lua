
local tweaks = {
	Index = 3,
	Script = "SpaceEffects/RoundTrace.lua",
	Type = "Whirl",		Commands = "StatePerSprite",
	AnimationTypes = "Static"
}

return loadfile( beat4sprite.Paths.getBGAFile("5th028B") )( tweaks )