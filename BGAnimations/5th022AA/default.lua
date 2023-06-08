
local params = beat4sprite.create( {
	File = "5th/Sprites/HSV/DAB 4x4.png",
	firstState = 1,
	lastState = 4
} )

return loadfile( beat4sprite.Paths.getBGAFile("5th022AD") )( params )