
local params = beat4sprite.create {

	{
		File = "1st/Sprites/H 5x4.png",
		Zoom = 1,
		Columns = 5,
		Rows = { -2, 1 },
		firstState = 5
	},

	{
		File = "1st/Backgrounds/D.png",
		Columns = { 0, 1 },
		Rows = { -1, 0 },
		Zoom = 0.5,
		tweenRate = 4,
		Commands = { "Move", "Blend" },
		Blend = "BlendMode_Add",
		scrollX = -1

	}

}

return params:Load()