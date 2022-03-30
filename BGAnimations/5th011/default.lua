
local params = {

	FileTweak = BGA_G.BPath("5th001A"),

	{
		Cleanup = true,
		File = "5th/Sprites/AB 4x4.png",
		Frame_i = 15,	X_num = { -4, 3 },
		Y_num = { -2, 1 },
		Commands = { "RandomDelays" },
	},

	{ Remove = true }

}

local params_2 = BGA_G.Copy(params)
params_2:ParTweak( {
	{
		File = "5th/Sprites/ABC 4x4.png",
		Frame_i = 5,		Frame_l = 8
	}
} )

return Def.ActorFrame{ 
	params:Load(),	params_2:Load()
}