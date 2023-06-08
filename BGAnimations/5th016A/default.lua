
local sub = ...

local params = beat4sprite.create( {

	{
		File = "5th/Sprites/A 4x3.png",
		firstState = 11,
		lastState = 12,
		Cleanup = true,
		Columns = { -4, 3 },
		Rows = 1,
	},

	{ Remove = true }

} )

	params:tweak( sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params )