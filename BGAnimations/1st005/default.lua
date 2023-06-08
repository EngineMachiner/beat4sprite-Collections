
local params = beat4sprite.create {

	{
		File = "1st/Sprites/HSV/A 4x1.png",
		Columns = 1,	firstState = 4,
		lastState = 1,	AnimationRate = 8
	},

	{
		File = "1st/Sprites/Clock 6x5.png",
		Commands = "MaskSource",
		firstState = 1,	lastState = 30,
		Zoom = 5,	AnimationRate = 2
	},
	
	{ AnimationOffset = 1, Commands = "MaskDestination" }

}

params[3] = params[1]:copy( params[3] )

return params:Load()