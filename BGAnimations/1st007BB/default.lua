
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
		File = "1st/Sprites/L 6x1.png",
		Zoom = 0.25,
		Columns = { -2, 3 },
		Rows = 1,
		lastState = 6,
		Pulse = 3,
		Commands = { "Blend", "StatePerSprite" },
		AnimationTypes = "Static",
		Blend = "BlendMode_Add",
		Spacing = { 0.625, 1 },
		AnimationOffset = 4
	}

} )

return params:Load()