
local params = beat4sprite.create( {
	File = "5th/Sprites/BABC 5x4.png",
	firstState = 1,
	lastState = 20,
	AnimationTypes = "Random",
	Columns = 5,
	AnimationRate = 1,
	Rows = { -2, 1 }
} )

return params:Load()