
local params = beat4sprite.create {
	firstState = 13,		lastState = 16,
	scrollY = 1,			Rows = 2
}

return loadfile( beat4sprite.Paths.getBGAFile("5th022AD") )( params )