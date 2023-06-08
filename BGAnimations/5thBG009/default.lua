return beat4sprite.Load {
	
	beat4sprite.Sprite.bgTemplate( beat4sprite.create {
		File = beat4sprite.GAMESTATE.getSongBG(),
		Commands = "Fade",		Ramp = true,		Color = color("#808080"),
		Actors = beat4sprite.Sprite.colorQuad( Color.Black ) .. { onBackground = true }
	} ),

	{

		File = "/5th/Sprites/DABC 4x4.png",
		firstState = 11,		lastState = 12,
		Move = "Down",			AnimationTypes = "Static",
		spinAngle = true,		Script = "SpaceEffects/Particles.lua"

	}

}