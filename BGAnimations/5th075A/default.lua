
local sub = ...

local params = beat4sprite.create {

	{
		File = "/5th/Sprites/A 4x3.png",
		firstState = 7,			lastState = 8,
		Columns = { -4, 3 },	Rows = 1,
		AnimationRate = 0.5,	tweenRate = 2,
		Actors = beat4sprite.Sprite.colorQuad( Color.Black ) .. { onBackground = true }
	},

	{
		File = "/5th/Sprites/AB 4x4.png",
		firstState = 1,		lastState = 2,	
		Columns = 4,		Rows = { -2, 1 },	scrollX = 1,
		Commands = "Move",	AnimationRate = 0.5,
		tweenRate = 2
	}

}

params:tweak( sub )

return params:Load()