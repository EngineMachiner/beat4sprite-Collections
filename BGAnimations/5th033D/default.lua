
local params = BGA_G.Create( {

	{
		File = "5th/Sprites/HSV/D 5x4.png",
		Y_num = { -3, 4 },	X_num = { -9, 2 },
		Frames = { 1, 20, Type = "OnlyRow" },
		Commands = { "Move", "StairsStates" },
		Y_coord = 0.5,	X_coord = 0.5,	HurryTweenBy = 2,
	}

} )

params[2] = params[1]:Copy()
params[2]:ParTweak( {
	Class = "Quad",	Color = "Rainbow",
	EffectOffset = 9.5,
	Commands = { "Move", "StairsStates", "Fade", "Blend" }
} )

return params:Load()