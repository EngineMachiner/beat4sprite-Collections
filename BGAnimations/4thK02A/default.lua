
local args = ...

local params = beat4sprite.create( {

	{	
		File = "/4th/Backgrounds/F2.png",
		Script = "Kaleidoscopes/Single.lua"
	},

	{	
		File = "/4th/Sprites/BAB 5x4.png",
		States = 2,	Columns = 6,	Rows = 2,
		Scroll = { -1, -1 }
	}

} )

params:tweak( args )

return params:Load()