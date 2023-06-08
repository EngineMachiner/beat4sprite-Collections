
local params = beat4sprite.create {

	{	
		tweakScript = beat4sprite.Paths.getBGAFile("5th035A"),
		{ Index = 3, Remove = true }
	},

	{
		File = "/5th/Sprites/DABC 4x4.png",
		firstState = 9,	lastState = 10,
		Commands = "StatePerSprite",
		AnimationTypes = "Static",
		Script = "LineXY.lua"
	}
	
}

return params:Load()