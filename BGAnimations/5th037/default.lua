
local sub = ...

local pars = {

	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{ 
		File = "5th/Sprites/AB 4x4.png",
		Columns = { -4, 3 },
		Rows = { -2, 1 },
		AnimationRate = 2,
		firstState = 14,
		lastState = 15,
		Cleanup = true
	},

	{ Remove = true }

}

pars = beat4sprite.create(pars)

pars:tweak(sub)

return pars:Load()