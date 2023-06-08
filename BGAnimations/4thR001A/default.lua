
local args = ...

local params = beat4sprite.create {

	{
		File = "4th/Sprites/Gradients/A001 8x8.png",
		Columns = { -2, 1 },
		Rows = { -1, 0 },
		firstState = 60,
		lastState = 1,
		Zoom = 4,
		AnimationRate = 4,
		Commands = "Mirror"
	},

	{	
		File = "4th/Sprites/AB 5x4.png",
		States = { 2, 15 },
		Columns = 4,
		Rows = 2,
		Blend = "BlendMode_Add",
		Move = { 0, -1 },
		Commands = "StairsStates"
	}

}

params:tweak( args )

return params:Load()