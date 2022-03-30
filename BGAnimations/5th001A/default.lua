
local tweaks = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/BA 4x3.png",
		X_num = { -4, 3 }, Y_num = 1,
		Frames = { 5, 8 },
		RandomInitState = true
	},

	{	
		File = {
			"5th/Backgrounds/BAB2.png",
			"5th/Backgrounds/BAB.png"
		},
		TCV = { -1, 0 }
	}

} )

params:ParTweak( tweaks )

return params:Load()