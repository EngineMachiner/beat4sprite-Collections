
local args = ...

local params = beat4sprite.create( {

	{	
		File = "4th/Sprites/Gradients/A 5x6.png",
		States = { 1, 30 },	Columns = { 0, 1 },
		Rows = { -1, 0 },
		Zoom = SCREEN_WIDTH / 320,
		Commands = "Mirror"
	},

	{
		File = "4th/Sprites/ABCD 5x4.png",
		States = 11,	Spin = true,
		Move = "Out",	Script = "SpaceEffects/Line.lua"
	}

} )

params:tweak( args )

return params:Load()