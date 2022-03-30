
local args = ...

local params = BGA_G.Create( {

	{	
		File = {	
			"4th/Backgrounds/A01.png",
			"4th/Backgrounds/A02.png"
		},
		TCV = { -1, 0 },
		Reversed = true
	},

	{	
		File = "4th/Sprites/A 1x4.png",
		Y_num = { -2, 0 },
		Spacing = { 1, 1.5 },
		Frames = { 1, 4 },
		RandomInitState = true,
		Blend = "BlendMode_Add"
	}

} )

params:ParTweak( args )

return params:Load()