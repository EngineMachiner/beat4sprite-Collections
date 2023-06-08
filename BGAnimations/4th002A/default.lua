
local args = ...

local params = beat4sprite.create {

	{	
		File = "4th/Backgrounds/B.png",
		MirrorX = true,
		Columns = 1,		Type = 2,
		Script = "WarpingEffects/Flag.lua",
		Commands = "Rainbow"
	},

	{	
		File = "4th/Sprites/AB 5x4.png",
		States = 1,
		Script = "SpaceEffects/Particles.lua",
		Move = "Left"
	},

	{	
		File = "4th/Sprites/AB 5x4.png",
		States = { 2, 15 },
		Blend = "BlendMode_Add",
		Script = "SpaceEffects/Particles.lua",
		Move = "Left"
	}

}

params:tweak( args )

return params:Load()