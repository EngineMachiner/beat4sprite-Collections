
local tweaks = ...

local params = BGA_G.Create( {

	{
		File = BGA_G.SongBGPath(),
		Commands = "Mirror",
		BGMirror = true,
		X_num = 1
	},

	{
		File = "1st/Sprites/H 5x4.png",
		Frame_i = 6,	Frame_l = 13,
		Script = "SpaceEffects/Line.lua",
		Type = "Line",	Lines = 12
	}

} )

params:ParTweak( tweaks )

return params:Load()