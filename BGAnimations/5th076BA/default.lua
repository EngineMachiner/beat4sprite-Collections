
local params = beat4sprite.create {

	{
		File = "/5th/Sprites/DA 4x3.png",
		firstState = 11,	lastState = 12,
		Columns = { -5, 4 },
		Rows = 1
	},

	{
		File = "/5th/Sprites/DABC 4x4.png",
		firstState = 10,	Clockwise = true,
		Script = "SpaceEffects/RoundTrace.lua",	
		Type = "Spiral"
	}

}
	
return params:tweak(...):Load()