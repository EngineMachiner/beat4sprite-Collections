
local tweaks = ...

local params = BGA_G.Create( {

	{
		File = "/5th/Backgrounds/CA.png",
		X_num = 1,
		Commands = "Mirror",
		BGMirror = true
	},

	{
		File = "/5th/Sprites/CAB 5x4.png",
		Frame_i = 11,
		Frame_l = 15,
		Script = "WallBumps.lua"
	}

} )
 	
params:ParTweak( tweaks )

return params:Load()
