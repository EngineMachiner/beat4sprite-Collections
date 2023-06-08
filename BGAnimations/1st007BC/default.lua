
local params = beat4sprite.create( {

	{
		File = "1st/Backgrounds/D2.png",
		Columns = { 0, 1 },
		Rows = { -1, 0 },
		Zoom = 0.5,
		tweenRate = 4,
		Commands = "Move",
		scrollX = -1

	},

	{
		File = "1st/Backgrounds/B.png",
		Columns = 1,
		Commands = { "Color", "Mirror" },
		MirrorX = true,
		Color = color("0,0,1,1"),
	}

} )

return params:Load()