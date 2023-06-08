
local params = {

	Load = beat4sprite.Load,
	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{
		File = "5th/Backgrounds/BA.png",
		Columns = 1,
		Commands = "Mirror",
		MirrorX = true,
		Cleanup = true
	},

	{ Remove = true }

}

local params_2 = beat4sprite.create {

	{
		File = "5th/Sprites/BAB 4x4.png",
		firstState = 1,	lastState = 2,
		Columns = { -2, 1 },		Rows = { -2, 1 },
		Cross = { By = 2, Type = 3, Off = 1 },
		Commands = "StairsStates"	
	}

}

local params_3 = {

	Load = beat4sprite.Load,
	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{
		File = "5th/Sprites/BAB 4x4.png",
		firstState = 3,	lastState = 4,
		Columns = { 0, 1 },	Rows = { -2, 1 },
		Commands = "StairsStates",
		Cleanup = true
	},

	{ Remove = true }

}

return Def.ActorFrame{
	params:Load(),	params_2:Load(),
	params_3:Load()
}