
local sub = ...

local params = {

	{
		Columns = { -5, 4 },
		scrollX = 1,
		Commands = "Move"
	}

}

beat4sprite.tweak( params, sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th010AA") )( params )