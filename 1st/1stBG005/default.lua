
local tweaks = ...

local params = BGA_G.Create( {

	{
		File = BGA_G.SongBGPath(),
		Commands = "Mirror",
		BGMirror = true,
		X_num = 1
	},

	{
		File = "1st/Sprites/HSV/B 4x1.png",
		X_num = 1, Frame_l = 4,		Delay = 0.25,
		BGMirror = true, Color = Color.Black,
		Commands = { "Mirror" }
	}
	
} )

params:ParTweak( tweaks )

return params:Load()