
local params = beat4sprite.create( {

	{
		File = "1st/Backgrounds/E.png",
		Commands = "Mirror",
		MirrorX = true,
		Columns = 1
	},

	{
		File = "1st/Sprites/J 3x5.png",
		Columns = 1,
		Spacing = { 1, 0.65 },
		Rows = 1,
		Zoom = 2.5,
		lastState = 15,
		Color = Color.Orange,
		Blend = "BlendMode_Add",
		Commands = { "Color", "Blend" }
	}

} )

return params:Load()