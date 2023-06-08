
local tweaks = ...

local params = beat4sprite.create {
	
	{	
		File = "/5th/Backgrounds/BABC 2x2.png",
		firstState = 1,
		Columns = { -2, 1 },
		Rows = { -1, 0 }
	},

	{
		File = "/5th/Sprites/BAB 4x4.png",
		firstState = 9,
		Move = "Right",
		Script = "SpaceEffects/Particles.lua"
	}

}

params:tweak(tweaks)

return params:Load()