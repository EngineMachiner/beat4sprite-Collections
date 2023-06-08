
local params = beat4sprite.create( {

	{
		File = "5th/Sprites/HSV/D 5x4.png",
		Rows = { -3, 4 },	Columns = { -9, 2 },
		States = { 1, 20, Types = "XY-Skip" },
		Commands = { "Move", "StairsStates" },
		scrollY = 0.5,	scrollX = 0.5,	tweenRate = 2,
	}

} )

params[2] = params[1]:copy()
params[2]:tweak {
	Class = "Quad",	Color = "Rainbow",
	Commands = "Blend",		Fade = { 1, 1 }
}

return params:Load()