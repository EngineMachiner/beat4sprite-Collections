
local sub = ...

local params = beat4sprite.create {

	tweakScript = beat4sprite.Paths.getBGAFile("5th056A"),

	{ firstState = 3 },
	{ firstState = 10,	Move = "Down" }

}

params:tweak( sub )

return params:Load()