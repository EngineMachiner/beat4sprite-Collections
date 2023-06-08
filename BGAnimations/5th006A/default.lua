
local external = ...

local tweaks = beat4sprite.create {

	{
		Cleanup = true,
		File = "5th/Sprites/DABCD 1x4.png",
		lastState = 4,	Columns = 1,
		Rows = 4,	scrollY = -1,
		Commands = "StairsStates"
	},

	{ Remove = true }
	
}

tweaks:tweak( external )

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( tweaks )