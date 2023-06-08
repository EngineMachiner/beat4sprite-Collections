
local params = beat4sprite.create( {
	firstState = 13,	lastState = 16,
	Rows = 2, 	Columns = 5, 
	Commands = "Move",
	scrollX = -1,	scrollY = -1,
	tweenRate = 2
} )

return loadfile( beat4sprite.Paths.getBGAFile("5th022AD") )( params )