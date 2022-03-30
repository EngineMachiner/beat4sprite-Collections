

local args = ...

local params = BGA_G.Create( {

	{	
		File = BGA_G.SongBGPath(),
		X_num = 3, Y_num = 2,
		HurryTweenBy = 0.25,
		Commands = "Mirror", Alpha = 0.5,
		MultipleFiles = { 2, 2 },
		TCV = { 1, 1 }
	},

	{	
		File = BGA_G.SongBGPath(),
		X_num = 3, Y_num = 2,
		HurryTweenBy = 0.25,
		Commands = "Mirror", Alpha = 0.5,
		Blend = "BlendMode_Add",
		MultipleFiles = { 2, 2 },
		TCV = { -1, -1 }
	},

} )

return params:Load()