
local tweaks = {

	{
		Commands = { "Mirror", "Fade" },
		Fade = { 0, 1 },	Color = Color.Black
	},

	{
		File = "1st/Sprites/H 5x4.png",
		X_num = { -6, 5 },	Y_num = { -3, 2 },
		Frame_i = 6,	ResetParams = true,
		Commands = "SpinFrame",		Zoom = 0.93,
		Script = "AFTSpin.lua"
	}

}

return loadfile( BGA_G.BPath("1stBG001") )( tweaks )