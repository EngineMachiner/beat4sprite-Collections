
local sub = ...

local params = beat4sprite.create( {

	{
		File = "/5th/Sprites/CAB 5x4.png",
		Columns = 5,		Rows = { -2, 1 },
		firstState = 8
	},

	{
		File = "/5th/Sprites/CAB 5x4.png",
		firstState = 1,	Spin = true,
		Script = "SpaceEffects/Line.lua"
	}

} )

params:tweak( sub )

return params:Load()
