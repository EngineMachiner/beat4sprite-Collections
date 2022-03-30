
local params = BGA_G.Create( {

	{
		File = "/1st/Backgrounds/HA.png",
		X_num = 1,
		Y_num = 1,
		Zoom = 2,
		Commands = { "StairsStates", "Mirror" },
		StopAtFrame = 2,
		HurryTweenBy = 8,
		TCV = { 0, -1 }
	},

	{
		File = "/1st/Backgrounds/HA.png",
		X_num = 1,
		Y_num = 1,
		Zoom = 2,
		Commands = { "StairsStates", "Mirror" },
		Alpha = 0.5,
		StopAtFrame = 2,
		HurryTweenBy = 8,
		TCV = { 0, 1 }
	}

} )

return params:Load()