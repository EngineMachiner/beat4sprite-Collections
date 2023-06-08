local sub = ...

local pars = {

	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{ 
		File = "5th/Sprites/HSV/DAB2 4x4.png",
		Columns = { -4, 3 },
		Rows = { -2, 1 },
		firstState = 7,
		lastState = 8,
		AnimationRate = 1,
		Commands = "StairsStates",
		Cleanup = true
	},

	{ Remove = true }

}
pars = beat4sprite.create(pars)
pars:tweak(sub)

return pars:Load()