
local sub = ...

local params = {

	{
		X_num = { -5, 4 },
		X_coord = 1,
		Commands = "Move"
	}

}

BGA_G.ParTweak( params, sub )

return loadfile( BGA_G.BPath("5th010AA") )( params )