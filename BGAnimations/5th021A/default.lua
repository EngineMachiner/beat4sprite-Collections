
local params = {

	Load = BGA_G.Load,
	FileTweak = BGA_G.BPath("5th001A"),

	{
		File = "5th/Backgrounds/BA.png",
		X_num = 1,
		Commands = "Mirror",
		BGMirror = true,
		Cleanup = true
	},

	{ Remove = true }

}

local params_2 = BGA_G.Create( {

	{
		File = "5th/Sprites/BAB 4x4.png",
		Frame_i = 1,	Frame_l = 2,
		X_num = { -2, 1 },		Y_num = { -2, 1 },
		CrossType = "Y", 	Cross = { 0, 1 },
		Commands = "StairsStates"	
	}

} )

local params_3 = {

	Load = BGA_G.Load,
	FileTweak = BGA_G.BPath("5th001A"),

	{
		File = "5th/Sprites/BAB 4x4.png",
		Frame_i = 3,	Frame_l = 4,
		X_num = { 0, 1 },	Y_num = { -2, 1 },
		Commands = "StairsStates",
		Cleanup = true
	},

	{ Remove = true }

}

return Def.ActorFrame{
	params:Load(),	params_2:Load(),
	params_3:Load()
}