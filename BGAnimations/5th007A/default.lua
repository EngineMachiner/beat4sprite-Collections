
local sub = ...

local tweaks = {

	{ 
		File = "5th/Sprites/DA 4x3.png",
		firstState = 9,				lastState = 10,
		Columns = { -4, 3 },		Rows = 1,
		AnimationTypes = "Line",
		Cleanup = true
	},

	{ Remove = true }

}

beat4sprite.tweak( tweaks, sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( tweaks )