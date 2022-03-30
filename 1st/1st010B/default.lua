
local params = BGA_G.Create( {

	{
		File = "1st/Backgrounds/E.png",
		Commands = "Mirror",
		BGMirror = true,
		X_num = 1
	},

	{
		File = "1st/Sprites/J 3x5.png",
		X_num = 1,
		Spacing = { 1, 0.65 },
		Y_num = 1,
		Zoom = 2.5,
		Frame_l = 15,
		Color = Color.Orange,
		Blend = "BlendMode_Add",
		Commands = { "Color", "Blend" }
	}

} )

return params:Load()