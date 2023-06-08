return beat4sprite.Load {

	{
		File = "1st/Sprites/E 4x1.png",
		lastState = 4,
		AnimationRate = 0.25,
		Run = function(self) self:fadeleft(0.125):faderight(0.025) end
	},

	{
		File = "1st/Sprites/D 4x2.png",
		Columns = 2,	MirrorX = "Rows",
		Zoom = 0.5,
		Rows = { -2, 1 },
		lastState = 8,
		Commands = { "Color", "Blend" },
		Blend = "BlendMode_Add",
		Color = color("#FF0000")
	}

}