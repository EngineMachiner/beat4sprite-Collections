
local params = beat4sprite.create( {

	{
		File = beat4sprite.GAMESTATE.getSongBG(),
		Commands = "Mirror",
		MirrorX = true,
		Columns = 1
	},

	{
		File = "1st/Sprites/Gradients/1stCobweb 8x8.png",
		Columns = 2,	posX = -0.5,	Rows = { -1, 0 },
		firstState = 1, lastState = 60, Zoom = 4,
		AnimationRate = 2, Commands = { "Mirror", "Blend" },
		Blend = "BlendMode_Add"
	}

} )

return params:Load()