
local params = BGA_G.Create( {

	{
		File = "1st/Backgrounds/D2.png",
		X_num = { 0, 1 },	Y_num = { -1, 0 },
		Zoom = 0.5,		Fade = { 0, 2 },
		Commands = "Fade",	Color = Color.White,
		Color2 = Color.Orange
	},

	{
		File = "1st/Sprites/H 5x4.png",
		Frame_i = 2,
		Script = "WallBumps.lua"
	}

} )

return params:Load()