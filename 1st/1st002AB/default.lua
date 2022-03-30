
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/H 5x4.png",
		X_num = 4,
		Y_num = { -2, 1 },
		Color = "Rainbow",
		Frame_i = 4

	},

	{
		File = "1st/Sprites/J 3x5.png",
		X_num = 1,
		Spacing = { 1, 0.65 },
		Y_num = 1,
		Zoom = 2.5,
		Frame_l = 15,
		Color = Color.Orange,
		Blend = 'add'
	}

} )

return params:Load()