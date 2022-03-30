
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/Gradients/B001 5x3.png",
		X_num = { -2, 1 },
		Y_num = { -1, 0 },
		Frame_l = 15,
		Delay = 0.5,
		Zoom = 1.5,
		Commands = { "Rainbow", "Mirror" }
	},

	{
		File = "1st/Sprites/G 4x4.png",
		Frame_l = 8,
		Dir = "Out",
		Slices = 4,
		Blend = "BlendMode_Add",
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral"
	},

	{	AngleOffset = 180	}

} )

params[3] = params[2]:Copy( params[3] )

return params:Load()