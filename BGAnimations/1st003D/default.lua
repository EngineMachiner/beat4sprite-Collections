local params = beat4sprite.create {

	{
		File = "1st/Sprites/Gradients/B001 5x3.png",
		Columns = { -2, 1 },
		Rows = { -1, 0 },
		lastState = 15,
		AnimationRate = 0.5,
		Zoom = 1.5,
		Commands = { "Rainbow", "Mirror" }
	},

	{
		File = "1st/Sprites/G 4x4.png",
		lastState = 8,
		Move = "Out",
		Slices = 3,
		Blend = "BlendMode_Add",
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral"
	},

	{ mainRotation = 180 }

}

params[3] = params[2]:copy( params[3] )

return params:Load()