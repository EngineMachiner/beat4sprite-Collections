
local args = ...

local params = beat4sprite.create( {

	{
		File = beat4sprite.GAMESTATE.getSongBG(),
		Script = "WarpingEffects/Spacing.lua"
	},

	{	
		File = "4th/Sprites/AB 5x4.png",
		States = { 2, 15 },	Columns = 10,
		Rows = { -2, 1 },
		Blend = "BlendMode_Add",
		Scroll = { -1, 0 },
		Commands = "StairsStates"
	}

} )

params:tweak( args )

return params:Load()