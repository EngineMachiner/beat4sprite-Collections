
local params = BGA_G.Create( {

	{
		File = BGA_G.SongBGPath(),
		X_num = 1,
		BGMirror = true,
		Commands = { "Mirror" },
		Script = "Kaleidoscopes/Main.lua"
	},

	{
		File = "1st/Sprites/I 4x4.png",
		X_num = 2,
		Y_num = { -2, 1 },
		Frame_l = 16,
		Commands = { "Color", "MirrorYPerRow", "Blend" },
		Blend = "BlendMode_Modulate",
		Color = color("0,0,1,1")
	}

} )

return params:Load()