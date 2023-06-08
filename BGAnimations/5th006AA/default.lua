
local sub = ...

local tweaks = {

	{
		Cleanup = true,
		File = "5th/Sprites/DABCD 1x4.png",
		lastState = 4,		Columns = 1,
		Rows = 4,			scrollY = -1,		AnimationRate = 2,
		AnimationRate = 2,	Commands = "StairsStates"
	},

	{ Remove = true }
	
}
	
beat4sprite.tweak( tweaks, sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( tweaks )
