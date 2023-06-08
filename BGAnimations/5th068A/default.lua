
local sub = ...

local tweaks = {

	{
		Cleanup = true,
		File = "/5th/Backgrounds/CA.png",
		Columns = 1,
		Commands = "Mirror",
		MirrorX = true
	},

	{
		File = "/5th/Sprites/CAB 5x4.png",
		Cleanup = true,
		firstState = 11,
		lastState = 15,
		Move = "Left",
		Script = "SpaceEffects/Particles.lua"
	}

}

beat4sprite.tweak( tweaks, sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th064A") )( tweaks )