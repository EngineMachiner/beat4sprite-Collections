
local params = BGA_G.Create( {

	{
		File = "1st/Backgrounds/D2.png",
		X_num = { 0, 1 },
		Y_num = { -1, 0 },
		X_pos = 0.75,
		Zoom = 0.5,
		HurryTweenBy = 4,
		Commands = "Move",
		X_coord = -1

	},

	{
		File = "1st/Sprites/L 6x1.png",
		Zoom = 0.25,
		X_num = { -2, 3 },
		Y_num = 1,
		Frame_l = 6,
		Commands = { "Blend", "FramePerSprite", "Zoomin" },
		Blend = "BlendMode_Add",
		Spacing = { 0.625, 1 },
		State = -2
	}

} )

return params:Load()