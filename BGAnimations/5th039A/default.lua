
local sub = ...

local pars = {

	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{ 
		File = "5th/Sprites/DA 4x3.png",
		Columns = { -4, 3 },	Rows = { -2, 1 },
		scrollY = -1,	firstState = 12,
		AnimationRate = 2,	Commands = "Move",
		Cleanup = true
	},

	{ Remove = true }

}

pars = beat4sprite.create( pars )
pars:tweak( sub )

return pars:Load()