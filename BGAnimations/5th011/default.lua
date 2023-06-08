
local params = beat4sprite.create {

	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{
		Cleanup = true,
		File = "5th/Sprites/AB 4x4.png",
		firstState = 15,	Columns = { -4, 3 },
		Rows = { -2, 1 }
	},

	{ Remove = true }

}

local paramsTwo = params:copy():tweak {
	File = "5th/Sprites/ABC 4x4.png",
	firstState = 5,		lastState = 8,
	Commands = "RandomDelays"
}

return Def.ActorFrame{ params:Load(),	paramsTwo:Load() }