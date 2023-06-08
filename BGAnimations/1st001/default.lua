
local quad = beat4sprite.Sprite.colorQuad( Color.Black ) .. { onBackground = true }

return beat4sprite.Load {

	{
		File = "1st/Sprites/J 3x5.png",
		Columns = 1,		Spacing = { 1, 0.65 },
		Rows = 1,			Zoom = 2.5,
		lastState = 15,		Color = Color.Orange,
		Blend = 'add',		Actors = quad
	},

	{
		File = "1st/Sprites/Gradients/SkullR 5x6.png",
		Columns = { -2, 3 },	Rows = 1,
		Zoom = 2,				lastState = 30,
		Commands = "Blend",		Blend = "BlendMode_Add"
	}

}