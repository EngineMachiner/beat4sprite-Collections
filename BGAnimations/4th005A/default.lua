local params = beat4sprite.create {

	{	
		File = "4th/Sprites/ABCDE 5x4.png",
		Columns = 4,	Rows = { -2, 1 },
		States = { 5, 20 },
		Actors = beat4sprite.Sprite.colorQuad( Color.Black ) .. { onBackground = true }
	},

	{	
		File = "4th/Sprites/Gradients/B 5x6.png",
		Columns = 4,					Rows = { 0, 1 },
		Zoom = 1.575,					posY = 0.5,
		Spacing = { 1, 2 },				States = { 1, 30 },		Fade = { 1, 0.25 },
		Blend = "BlendMode_Add",		Color = "Rainbow",
		Commands = "Mirror"
	}

}

params[3] = params[2]:copy {
	Fade = { -1, -0.25 },		posY = - params[2].posY,
	EffectOffset = 0.75,
}

return params:tweak(...):Load()