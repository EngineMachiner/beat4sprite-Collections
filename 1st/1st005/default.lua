
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/HSV/A 4x1.png",
		X_num = 1,	Frame_i = 4,
		Frame_l = 1,	Delay = 8
	},

	{
		File = "1st/Sprites/Clock 6x5.png",
		X_num = 1,	Commands = "ZWrite",
		Frame_i = 1,	Frame_l = 30,
		Zoom = 5,	Delay = 2
	}, 		
	
	{ 
		Animate = true,		State = 1,
		Commands = { "FramePerSprite", "ZTest" }
	}

} )

params[3] = params[1]:Copy( params[3] )

return params:Load()