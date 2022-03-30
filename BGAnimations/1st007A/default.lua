
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/H 5x4.png",
		Zoom = 1,
		X_num = 5,
		Y_num = { -2, 1 },
		Frame_i = 5
	},

	{
		File = "1st/Backgrounds/D.png",
		X_num = { 0, 1 },
		Y_num = { -1, 0 },
		X_pos = 0.75,
		Zoom = 0.5,
		HurryTweenBy = 4,
		Commands = { "Move", "Blend" },
		Blend = "BlendMode_Add",
		X_coord = -1

	}

} )

return params:Load()