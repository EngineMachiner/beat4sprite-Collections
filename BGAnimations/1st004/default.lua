return beat4sprite.Load {

	{
		File = "1st/Sprites/I 4x4.png",
		Columns = 2,
		Rows = { -2, 1 },
		lastState = 16,		MirrorX = "Rows",
		Commands = { "Color", "Blend" },
		Blend = "BlendMode_Add",
		Color = color("#00FF00"),
		Actors = beat4sprite.Sprite.colorQuad( Color.Black ) .. { onBackground = true }
	},

	{
		File = "1st/Sprites/HSV/B 4x1.png",
		lastState = 4,		AnimationRate = 0.25,
		Run = function(self) self:fadeleft(0.125):faderight(0.025) end,
	}

}