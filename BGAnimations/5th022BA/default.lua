local params = beat4sprite.create( {
	firstState = 13,
	lastState = 16,
	Commands = "LineStates"
} )

return loadfile( beat4sprite.Paths.getBGAFile("5th022AD") )( params )