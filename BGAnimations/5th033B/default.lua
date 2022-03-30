
local params = BGA_G.Create( {
	{
		File = "5th/Sprites/HSV/D 5x4.png",
		Y_num = { -3, 4 },
		Frames = { 1, 20, Type = "OnlyRow" },
		X_num = 5,	HurryTweenBy = 2,
		Commands = { "Move", "StairsStates" },
		Y_coord = -1
	}
} )

params[2] = params[1]:Copy()
params[2]:ParTweak( {
	Class = "Quad",		Color = "Rainbow",
	Commands = { "Move", "StairsStates", "Fade", "Blend" }
} )

return params:Load()