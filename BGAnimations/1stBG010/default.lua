
local tweaks = ...

local params = BGA_G.Create( {

	{
		File = BGA_G.SongBGPath(),
		Commands = "Mirror",
		BGMirror = true,
		X_num = 1
	},

	{
		File = "1st/Sprites/Gradients/1stB 2x2.png",
		X_num = 4, Y_num = 2, Zoom = 0.5,
		Alpha = 0.25, Frame_l = 4,
		FrmDelay = 0.1875
	}

} )

params:ParTweak( tweaks )

return params:Load()