
local params = BGA_G.Create( {

	{
		File = "1st/Backgrounds/H.png",
		X_num = 1,
		Commands = "Mirror",
	},

	{
		File = "1st/Sprites/M 5x4.png",
		Frame_i = 7,
		Default = 20,
		Script = "SpiralStaticTrace.lua",
	}

} ) 

return params:Load()