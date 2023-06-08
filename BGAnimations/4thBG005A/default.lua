

local args = ...

local params = beat4sprite.create( {

	{	
		File = beat4sprite.GAMESTATE.getSongBG(),
		Columns = 3, Rows = 2,
		tweenRate = 0.25,
		Commands = "Mirror", Alpha = 0.5,
		MultipleFiles = { 2, 2 },
		Scroll = { 1, 1 }
	},

	{	
		File = beat4sprite.GAMESTATE.getSongBG(),
		Columns = 3, Rows = 2,
		tweenRate = 0.25,
		Commands = "Mirror", Alpha = 0.5,
		Blend = "BlendMode_Add",
		MultipleFiles = { 2, 2 },
		Scroll = { -1, -1 }
	},

} )

return params:Load()