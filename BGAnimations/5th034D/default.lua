
local params = BGA_G.Create( {
	{
		File = "5th/Sprites/HSV/D 5x4.png",
		Y_num = { -1, -1 },	X_num = { -2, 1 },
		Spacing = { 1.25, 1.375 },
		Frame_i = 6,	Frame_l = 10
	}
} )

params[2] = params[1]:Copy()
params[3] = params[1]:Copy()
params[4] = params[1]:Copy()

params[2]:ParTweak( {
	Y_num = 0,		Frame_i = 11,
	Frame_l = 15
} )

params[3]:ParTweak( { Y_num = { 1, 1 } } )

params[4]:ParTweak( {
	Y_num = 1,		Fade = { 1, 1 },
	Class = "Quad",	Color = "Rainbow",
	Commands = { "Fade", "Blend" }
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th034C") )(),
	params:Load()
}