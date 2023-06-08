
local args = ...

local params = beat4sprite.create( {

	{	
		File = beat4sprite.GAMESTATE.getSongBG(),
		MirrorX = true,			Columns = 1,
		Commands = "Rainbow",	Type = 2,
		Script = "WarpingEffects/Spacing.lua"
	},

	{	
		File = "4th/Sprites/ABCD 5x4.png",
		States = 1,		Move = "Out",	Spin = true,
		Script = "SpaceEffects/Line.lua"
	}

} )

params:tweak( args )

return params:Load()