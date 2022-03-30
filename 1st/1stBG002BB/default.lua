
local tweaks = {

	{
		Commands = "Mirror"
	},

	{
		File = "1st/Sprites/G 4x4.png",
		X_num = { -6, 5 },
		Y_num = { -2, 1 },
		Frames = { 9, 16 },
		ResetParams = true,
		Blend = "BlendMode_Add",
		BGMirror = true,
		Script = "TileTool.lua"
	}

}

return loadfile( BGA_G.BPath("1stBG001") )( tweaks )