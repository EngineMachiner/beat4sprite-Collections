
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/Gradients/B001 5x3.png",
		X_num = { -2, 1 },
		Y_num = { -1, 0 },
		Frame_l = 15,
		Zoom = 1.5,
		Delay = 0.5,
		Commands = { "Rainbow", "Mirror" }
	},

	{
		File = "1st/Sprites/F 32x4.png",
		Script = "SpaceEffects/Line.lua",
		Flat = true,	Blend = 'add',
		Commands = { "FramePerSprite" },	
		Alpha = 0.75,
		Frames = { 1, 32 }
	}

} )

return params:Load()