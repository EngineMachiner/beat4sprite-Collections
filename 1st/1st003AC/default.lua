
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/Gradients/dance 3x5.png",
		X_num = 1,
		Frame_l = 15,
		Delay = 4,
		Zoom = 5,
		BGMirror = true
	},

	{
		File = "1st/Sprites/G 4x4.png",
		Script = "SpaceEffects/Line.lua",
		Blend = "BlendMode_Add",
		HurryTweenBy = 0.25,
		Dir = "Out",	Frames = { 1, 8 }
	}

} )

return params:Load()