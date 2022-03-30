
local tweaks = ...

local params = BGA_G.Create( {

	{
		File = "1st/Sprites/Gradients/1stBA 4x2.png",
		X_num = 4,
		Y_num = 2,
		Zoom = 0.5,
		Frame_l = 8,
		FrmDelay = 0.25
	},

	{
		File = "1st/Sprites/H 5x4.png",
		Script = "WallBumps.lua",
		Frame_i = 17,
		Commands = "NoAnimation"
	}


} )

params:ParTweak( tweaks )

return params:Load()