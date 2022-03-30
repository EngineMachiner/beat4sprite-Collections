
local sub = ...

local tweaks = {
	{
		File = "5th/Backgrounds/B.png",
		X_num = { -1, 1 },
		Commands = "Mirror",
		BGMirror = true,
		Cleanup = true
	},	{}
}

BGA_G.ParTweak( tweaks, sub )

return loadfile( BGA_G.BPath("5th001A") )( tweaks )