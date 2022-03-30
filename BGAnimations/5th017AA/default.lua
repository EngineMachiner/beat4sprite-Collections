
local tweaks = ...

local params = BGA_G.Create( {

	{		
		File = "5th/Backgrounds/CA.png",
		X_num = 1,
		Commands = "Mirror",
		BGMirror = true
	},

	{
		File = "5th/Sprites/CABC 1x4.png",
		Y_num = 2,
		Frame_l = 4,
		Y_coord = -1,
		HurryTweenBy = 2,
		Commands = "Move"
	}

} )

params:ParTweak( tweaks )

return params:Load()