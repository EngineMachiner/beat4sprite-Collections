
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/Gradients/1stA 5x6.png",
		X_num = { -2, 1 },
		Y_num = { -1, 0 },
		Frame_l = 30,	Zoom = 3,
		Delay = 0.5,	Commands = "Mirror"
	},

	{
		File = "1st/Sprites/H 5x4.png",
		Script = "SpaceEffects/Line.lua",
		Flat = true, Dir = "Out",
		Blend = 'add',
		Frames = 2
	}

} )

return params:Load()