
local params = beat4sprite.create( {

	{
		File = beat4sprite.GAMESTATE.getSongBG(),
		Columns = 1,
		MirrorX = true,
		Script = "Kaleidoscopes/Single.lua"
	},

	{
		File = "1st/Sprites/Gradients/1stAfro 3x5.png",
		Columns = 1,
		Rows = { -2, 0 },
		lastState = 15,
		Commands = "Mirror",
		Zoom = 2.5,
		MirrorX = true,
		Blend = 'add',
		Alpha = 0.5
	},
} ) 

return params:Load()