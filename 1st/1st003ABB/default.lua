
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/Gradients/1stA 5x6.png",
		X_num = { -2, 1 },
		Y_num = { -1, 0 },
		Frame_l = 30,	Zoom = 3,
		Delay = 0.5,
		Commands = { "Mirror" }
	},

	{
		File = "1st/Sprites/N 4x1.png",
		Frames = { 2, 4 },	Zoom = 0.25,
		Script = "SpaceEffects/Line.lua",
		Commands = "FramePerSprite"
	}

} )

return params:Load()