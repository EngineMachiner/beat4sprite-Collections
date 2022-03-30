
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/A 1x8.png",
		X_num = 1,
		Y_num = { -4, 3 },
		Frame_l = 8,
		Color = color("#00FFFF")
	},

	{
		File = "1st/Sprites/Gradients/1stABC 5x6.png",
		X_num = { -2, 1 },
		Y_num = { -1, 0 },
		Frame_l = 30,
		Blend = 'add',
		Zoom = 3,
		Delay = 0.5,
		Commands = { "Mirror" }
	},

} )

return params:Load()