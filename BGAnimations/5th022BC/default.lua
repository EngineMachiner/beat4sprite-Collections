local params = beat4sprite.create( {
	firstState = 16,
	lastState = 13,
	Commands = "LineStates"
} )

return loadfile( beat4sprite.Paths.getBGAFile("5th022AD") )( params )