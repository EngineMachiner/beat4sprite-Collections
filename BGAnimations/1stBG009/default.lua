
local params = beat4sprite.create( {

	{
		File = beat4sprite.GAMESTATE.getSongBG(),
		Commands = "Mirror",
		MirrorX = true,
		Columns = 1
	},

	{
		File = "1st/Sprites/Gradients/B002 5x3.png",
		Columns = { -2, 1 },	Rows = { -1, 0 },
		States = { 1, 15 },	Zoom = 1.5,
		AnimationRate = 0.5,	Alpha = 0.25,
		Commands = { "Mirror" }
	}

} )

return params:Load()