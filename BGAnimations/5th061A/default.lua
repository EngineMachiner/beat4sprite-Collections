
local sub = ...

local tweaks = BGA_G.Create( {

	{
		Cleanup = true,
		File = "/5th/Backgrounds/AB.png",
		X_num = 1,	Commands = "Mirror",
		BGMirror = true
	},

	{
		Cleanup = true,
		File = "/5th/Sprites/ABCD 4x3.png",
		Frame_l = 12,	Dir = "Out",
		Script = "SpaceEffects/Line.lua"
	}

} )

tweaks:ParTweak( sub )

return loadfile( BGA_G.BPath("5th060A") )( tweaks )