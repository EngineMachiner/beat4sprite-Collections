
local params = beat4sprite.create {

	{
		File = "5th/Sprites/HSV/D 5x4.png",
		Rows = { -3, 4 },		States = { 1, 20, Types = "XY-Skip" },
		Columns = 5,			tweenRate = 2,
		scrollY = -1
	}

}

params[2] = params[1]:copy {
	Fade = { x = 1, y = 1 },
	Class = "Quad",		Color = "Rainbow",		Commands = "Blend"
}

return params:Load()