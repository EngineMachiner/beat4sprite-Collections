
local params = beat4sprite.create {

	{
		File = "/5th/Sprites/DA 4x3.png",
		firstState = 11,	lastState = 12,
		Columns = { -5, 4 },	Rows = 1
	},

	{
		File = "/5th/Sprites/DABC 4x4.png",
		firstState = 9,	Script = "SpaceEffects/RoundTrace.lua",
		Clockwise = true
	},

	{	
		File = "/5th/Sprites/DABC 4x4.png",
		firstState = 9,	Move = "Out",
		Script = "SpaceEffects/RoundTrace.lua"
	}

}
	
return loadfile( beat4sprite.Paths.getBGAFile("5th024ADB") )( params )