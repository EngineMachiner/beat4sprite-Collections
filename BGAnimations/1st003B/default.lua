
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/Gradients/1stAB 5x6.png",
		X_num = { -2, 1 },
		Y_num = { -1, 0 },
		Frame_l = 30,	Zoom = 3,
		Delay = 0.5,
		Commands = { "Mirror" }
	},

	{
		File = "1st/Sprites/H 5x4.png",
		Frame_i = 16,	Dir = "Out",
		Slices = 5,		StaticAngle = true,
		Color = color("0,0,1,1"),
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral"
	}

} )

return params:Load()