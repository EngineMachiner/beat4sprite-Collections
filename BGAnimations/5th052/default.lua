
local sub = ...

local params = beat4sprite.create {

	{	
		File = "5th/Sprites/BAB 4x4.png",
		firstState = 16,
		Columns = { -4, 3 },
		Rows = { -2, 1 }
	}

}

params[2] = params[1]:copy()
params[2]:tweak {
	firstState = 1,	lastState = 2,
	tweenRate = 2,	Commands = "SpinX"
}

params:tweak( sub )

return params:Load()