
local sub = ...

local params = BGA_G.Create( {

	FileTweak = BGA_G.BPath("5th056A"),

	{ Frame_i = 3 },
	{ Frame_i = 10,	Dir = "Down" }

} )

params:ParTweak( sub )

return params:Load()