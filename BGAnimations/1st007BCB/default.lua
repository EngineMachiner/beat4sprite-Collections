
local params = BGA_G.Create( {

	{
		File = "1st/Backgrounds/D2.png",
		X_num = { 0, 1 },
		Y_num = { -1, 0 },
		X_pos = 0.75,
		Zoom = 0.5,
		Commands = { "Color", "Move" },
		Color = Color.Purple,
		X_coord = -1,
		HurryTweenBy = 0.625
	},

	{
		File = "1st/Backgrounds/B.png",
		X_num = 1,
		Commands = { "Color", "Mirror" },
		BGMirror = true,
		Color = color("0,0,1,1"),
	}

} ) 

return params:Load()