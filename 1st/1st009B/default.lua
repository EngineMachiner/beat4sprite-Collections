
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/E 4x1.png",
		X_num = 1,
		Frame_l = 4,
		Delay = 0.25,
		BGMirror = true,
		Commands = { "Mirror" }
	},

	{
		File = "1st/Sprites/Gradients/SkullR2 5x6.png",
		X_num = 2,
		Zoom = 2,
		Y_num = 1,
		Frame_l = 30,
		Blend = "BlendMode_Add",
		Commands = "Blend"
	}

} ) 

return params:Load()