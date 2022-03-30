
local sub = ...

local tweaks = {

	{
		Cleanup = true,
		File = "/5th/Backgrounds/CA.png",
		X_num = 1,
		Commands = "Mirror",
		BGMirror = true
	},

	{
		File = "/5th/Sprites/CAB 5x4.png",
		Cleanup = true,
		Frame_i = 11,
		Frame_l = 15,
		Dir = "Left",
		Script = "Particles.lua"
	}

}

BGA_G.ParTweak( tweaks, sub )

return loadfile( BGA_G.BPath("5th064A") )( tweaks )