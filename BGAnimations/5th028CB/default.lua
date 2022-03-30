local tweaks = {

	{
		Index = 3,
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Whirl",		Commands = "FramePerSprite"
	},

	{
		Index = 1,
		File = "5th/Sprites/DABC 4x4.png",
		Frame_i = 16,	Alpha = true

	}
	
}

return loadfile( BGA_G.BPath("5th028B") )( tweaks )