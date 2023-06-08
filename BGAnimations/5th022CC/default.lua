local params = beat4sprite.create( {
	firstState = 16,
	lastState = 13,
	scrollY = -1,
	Rows = 2,
	tweenRate = 2,
	Commands = { "Move" }
} )

return loadfile( beat4sprite.Paths.getBGAFile("5th022AD") )( params )