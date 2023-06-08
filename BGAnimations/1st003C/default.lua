
local quad = beat4sprite.Sprite.colorQuad() .. { onBackground = true }

return beat4sprite.Load {

	{
		File = "1st/Sprites/F 4x4.png",
		Columns = 4, Rows = { -2, 1 },
		States = { 1, 8, Types = "PingPong" },
		Color = color("#808080"),
		Actors = quad
	},

	{
		File = "1st/Sprites/Gradients/B001 5x3.png",
		Columns = { -2, 1 }, Rows = { -1, 0 },
		lastState = 15, Zoom = 1.5, AnimationRate = 0.5,
		Commands = { "Blend", "Rainbow", "Mirror" }
	}

}