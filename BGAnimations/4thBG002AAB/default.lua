
local args = ...

local params = BGA_G.Create( {

	{	
		File = BGA_G.SongBGPath(),
		BGMirror = true,	X_num = 1,
		Skipping = true,
		Script = "WarpingEffects/Flag.lua"
	},

	{	
		File = "4th/Sprites/CABC 5x4.png",
		X_num = { -6, 5 },	Y_num = { -3, 2 },
		Frames = 5,	Blend = 'add',	Alpha = 0.5,
		Commands = { "SpinFrame", "Rainbow", "Alpha" },
		SpinMag = { 0, 0, 90 },	Zoom = 0.93,
		Script = "AFTSpin.lua"
	}

} )

params:ParTweak( args )

return params:Load()