
local params = beat4sprite.create( {

	{
		File = "1st/Backgrounds/H.png",
		Columns = 1,
		Commands = "Mirror",
	},

	{
		File = "1st/Sprites/M 5x4.png",
		firstState = 7,
		Default = 20,
		Script = "SpiralStaticTrace.lua",
	}

} ) 

return params:Load()