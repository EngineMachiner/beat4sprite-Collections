
local params = beat4sprite.create {

	{
		File = "5th/Sprites/HSV/D 5x4.png",
		Rows = { -1, -1 },	Columns = { -1, 2 },
		Spacing = { 1.25, 1.375 },
		firstState = 6,	lastState = 10,
		OffCenter = true
	}

}

for i = 2, 4 do params[i] = params[1]:copy() end

params[2]:tweak { Rows = 0,		firstState = 11,		lastState = 15 }

params[3]:tweak { Rows = { 1, 1 } }

params[4]:tweak {
	Rows = 1,		Fade = { 1, 1 },
	Class = "Quad",	Color = "Rainbow",
	Commands = "Blend"
}

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th034C") )(),	params:Load()
}