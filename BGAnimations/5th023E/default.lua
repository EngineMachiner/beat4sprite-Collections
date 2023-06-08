local params = beat4sprite.create( {
	firstState = 9,	lastState = 10,
	Commands = "StatePerSprite",
	AnimationTypes = "Static"
} )

return loadfile( beat4sprite.Paths.getBGAFile("5th023C") )( params )