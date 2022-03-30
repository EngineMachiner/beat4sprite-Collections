
local params = BGA_G.Create( {
	{
		File = "5th/Sprites/HSV/D 5x4.png",
		X_num = { -1, 0 },	Y_num = { -1, 1 },
		Spacing = { 1.25*2, 1.375 },
		X_pos = - 0.625,
		Frame_i = 6,	Frame_l = 10
	}
} )


params[2] = params[1]:Copy()
params[3] = params[1]:Copy()
params[4] = params[1]:Copy()

params[2]:ParTweak( {
	X_num = 0,		X_pos = - 0.25,
	Frame_i = 11,	Frame_l = 15
} )

params[3]:ParTweak( {
	X_num = 0,		X_pos = - params[2].X_pos * 3,
	Frame_i = 15,		Frame_l = 11,
} )

params[4]:ParTweak( {
	Spacing = { 1.25, 1.375 },
	X_num = { -2, 1 },	X_pos = 0,
	Y_num = 1,	Fade = { 1, 1 },
	Class = "Quad",		Color = "Rainbow",
	Commands = { "Fade", "Blend" }
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th034C") )(),
	params:Load()
}