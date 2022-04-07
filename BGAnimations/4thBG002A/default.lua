
local args = ...

local params = BGA_G.Create( {

	{	
		File = BGA_G.SongBGPath(),
		BGMirror = true,	X_num = 1,
		Commands = "Rainbow",	Type = 2,
		Script = "WarpingEffects/Spacing.lua"
	},

	{	
		File = "4th/Sprites/ABCD 5x4.png",
		Frames = 1,	Dir = "Out",	Spin = true,
		Script = "SpaceEffects/Line.lua"
	}

} )

params:ParTweak( args )

return params:Load()