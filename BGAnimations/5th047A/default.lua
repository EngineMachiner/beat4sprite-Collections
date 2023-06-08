
local sub = ...

local params = beat4sprite.create( {

	{
		File = "5th/Sprites/DABC 4x4.png",
		firstState = 5,
		lastState = 6,
		Columns = { -4, 3 },
		Rows = { -2, 1 }
	},

	{ Remove = true }

} )

	params:tweak( sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params )