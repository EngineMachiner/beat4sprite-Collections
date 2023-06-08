
local sub = ...

local params = beat4sprite.create {

	{
		File = "5th/Sprites/DA 4x3.png",
		firstState = 11,	lastState = 12,
		Commands = "StairsStates",
		AnimationTypes = ""
	},

	{ Remove = true }

}

params:tweak( sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params )