
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/H 5x4.png",
		X_num = 5,
		Y_num = { -2, 1 },
		Frame_i = 5
	},

	{
		File = "1st/Sprites/H 5x4.png",
		Frame_i = 16,
		X_num = { -6, 5 },	Y_num = { -3, 2 },
		Color = "Rainbow",	Blend = 'add',	
		Commands = "SpinFrame",	Zoom = 0.93,
		Script = "AFTSpin.lua"
	}

} )

return params:Load()