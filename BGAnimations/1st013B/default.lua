
local params = BGA_G.Create( {

	{
		File = "/1st/Sprites/Gradients/1stBall 3x5.png",
		X_num = 1, Frames = { 1, 15 }, Zoom = 5, BGMirror = true
	},

	{
		File = "1st/Sprites/D 4x2.png",
		X_num = 2, Zoom = 0.5, Y_num = { -2, 1 },
		Frame_l = 8,
		Commands = { "Color", "MirrorYPerRow", "Blend" },
		Blend = "BlendMode_Add", Color = color("#00FF00")
	}

} )

return params:Load()