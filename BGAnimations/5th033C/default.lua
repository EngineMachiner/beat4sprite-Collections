
local params = BGA_G.Create( {
	{
		File = "5th/Sprites/HSV/D 5x4.png",
		Y_num = { -2, 1 },	X_num = 5,
		Frames = { 1, 20, Type = "OnlyRow" }
	}
} )

params[2] = params[1]:Copy()
params[2]:ParTweak( {
	Fade = { 1, 1 },		Class = "Quad",
	Color = "Rainbow",
	Commands = { "Fade", "Blend" }
} )

return params:Load()