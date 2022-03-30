
local params = BGA_G.Create( {

	{	
		FileTweak = BGA_G.BPath("5th035A"),
		{ Index = 3, Remove = true }
	},

	{
		File = "/5th/Sprites/DABC 4x4.png",
		Frame_i = 9,	Frame_l = 10,
		Commands = "TwoSprites",
		Script = "LineXY.lua"
	}
	
} )

return params:Load()