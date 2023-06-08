
local sub = ...

local params = beat4sprite.create( {

	{
		File = "5th/Sprites/BAB 4x4.png",
		firstState = 14,	Columns = { -4, 3 },
		Rows = { -2, 1 }
	}

} )
params[2] = params[1]:copy()
params[2]:tweak( {
	File = "5th/Sprites/BAB 4x4.png",
	firstState = 10,	Rows = { -2, 1 },
	tweenRate = 2,	Commands = "SpinXY"
} )
params:tweak( sub )

return params:Load()