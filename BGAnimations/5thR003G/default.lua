
local params = beat4sprite.create( {
	File = "5th/Sprites/Gradients/B007 8x8.png",
	Columns = { -2, 1 },	Rows = { -1, 0 },
	lastState = 60,	Zoom = 4,
	AnimationRate = 8,	Commands = "Mirror"
} )

return params:Load()