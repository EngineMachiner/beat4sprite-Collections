
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/H 5x4.png",
		X_num = 4,
		Y_num = { -2, 1 },
		Frame_i = 4
	},

	{
		File = "1st/Sprites/M 5x4.png",
		Script = "SpaceEffects/Line.lua",
		Commands = "FramePerSprite",
		Frame_l = 6
	}

} )

return params:Load()