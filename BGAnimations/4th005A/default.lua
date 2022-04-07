
local args = ...

local params = BGA_G.Create( {

	{	
		File = "4th/Sprites/ABCDE 5x4.png",
		X_num = 4,	Y_num = { -2, 1 },
		Frames = { 5, 20 }
	},

	{	
		File = "4th/Sprites/Gradients/B 5x6.png",
		X_num = 4,	Y_num = { 0, 1 },
		Zoom = 1.575,
		Y_pos = 0.5,
		Spacing = { 1, 2 },
		Frames = { 1, 30 },
		Fade = { 0.5, 0 },
		FadePeriodBy = 0.5,
		Blend = "BlendMode_Add",
		Color = "Rainbow",
		Commands = { "Mirror", "Fade" }
	}

} )

params[3] = params[2]:Copy()
params[3]:ParTweak( {	
	Fade = { -0.5, 0 },
	Y_pos = - params[2].Y_pos
} )

params:ParTweak( args )

return params:Load()