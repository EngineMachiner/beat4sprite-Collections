local tweaks = {

	{
		Index = 3,
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Whirl",		Commands = "StatePerSprite",
		AnimationTypes = "Static"
	},

	{
		Index = 1,
		File = "5th/Sprites/DABC 4x4.png",
		firstState = 16,	Alpha = true

	}
	
}

return loadfile( beat4sprite.Paths.getBGAFile("5th028B") )( tweaks )