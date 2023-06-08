local params = beat4sprite.create {

	{
		File = "5th/Sprites/HSV/D 5x4.png",
		Columns = { -1, -1 },	Rows = { -1, 1 },
		Spacing = { 1.25, 1.375 },
		firstState = 6,	lastState = 10,
		OffCenter = true
	}

}

params[5] = params[1]:copy()

params[1]:tweak { posX = - 0.625 }

params[2] = params[1]:copy()
params[2]:tweak { Columns = 0,		firstState = 11,		lastState = 15 }

params[3] = params[2]:copy()
params[3]:tweak { Columns = { 1, 1 } }

params[4] = params[1]:copy()
params[4]:tweak { Columns = { 2, 2 } }

params[5]:tweak {
	Columns = { -1, 2 },		Fade = { 1, 1 },
	Class = "Quad",				Color = "Rainbow",
	Commands = "Blend"
}

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th034C") )(),	params:Load()
}