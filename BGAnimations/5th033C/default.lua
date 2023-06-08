
local params = beat4sprite.create {
	{
		File = "5th/Sprites/HSV/D 5x4.png",
		Rows = { -2, 1 },	Columns = 5,
		States = { 1, 20, Types = "XY-Skip" }
	}
}

params[2] = params[1]:copy()
params[2]:tweak {
	Fade = { 1, 1 },		Class = "Quad",		Color = "Rainbow",
	Commands = { "Fade", "Blend" }
}

return params:Load()