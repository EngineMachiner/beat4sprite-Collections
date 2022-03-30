
local tweaks = {

	{ Commands = "Mirror" },

	{
		File = "1st/Sprites/G 4x4.png",
		X_num = { -6, 5 },
		Y_num = { -3, 2 },
		Frame_i = 9,
		ResetParams = true,
		Blend = "BlendMode_Add",
		Commands = { "SpinFrame", "Alpha", "Blend" },
		Zoom = 0.93,
		Script = "AFTSpin.lua"
	}

}

return loadfile( BGA_G.BPath("1stBG001") )( tweaks )