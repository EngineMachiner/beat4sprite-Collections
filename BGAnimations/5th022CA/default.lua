
local params = beat4sprite.create {
	scrollY = - 1,		Rows = 4,		Commands = "LineStates"
}

params:tweak( ... )

return loadfile( beat4sprite.Paths.getBGAFile("5th022AD") )( params )