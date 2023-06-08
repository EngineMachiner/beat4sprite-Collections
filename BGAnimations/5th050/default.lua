
local params = beat4sprite.create( {
	File = "5th/Sprites/B 4x3.png",
	firstState = 7,
	lastState = 12,
	Commands = "RandomStates",
	AnimationRate = 1,
	Columns = { -4, 3 },
	Rows = 1
} )

return params:Load()