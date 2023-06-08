
local sub = ...
local params = beat4sprite.create {

	{
		File = "5th/Sprites/DA 4x3.png",
		firstState = 7,	lastState = 8,	Cleanup = true,
		Commands = "StairsStates",
		Columns = { -4, 3 },	Rows = 1 
	},

	{ Remove = true }

}

params:tweak(sub)

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params )