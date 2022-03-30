
local params = BGA_G.Create( {

	{
		File = BGA_G.SongBGPath(),
		Commands = "Mirror",
		BGMirror = true,
		X_num = 1
	},

	{
		File = "1st/Sprites/Gradients/B002 5x3.png",
		X_num = { -2, 1 },	Y_num = { -1, 0 },
		Frames = { 1, 15 },	Zoom = 1.5,
		Delay = 0.5,	Alpha = 0.25,
		Commands = { "Mirror" }
	}

} )

return params:Load()