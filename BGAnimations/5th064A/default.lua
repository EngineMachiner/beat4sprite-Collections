
local sub = ...

local params = beat4sprite.create( {

	{
		File = "5th/Sprites/CAB 5x4.png",
		firstState = 6,	Columns = 5,
		Rows = { -2, 1 }
	},

	{
		File = "/5th/Sprites/CA 4x3.png",
		firstState = 9,	Cleanup = true,
		Move = "Right",	Script = "SpaceEffects/Particles.lua"
	}

} )

params:tweak( sub )

return params:Load()