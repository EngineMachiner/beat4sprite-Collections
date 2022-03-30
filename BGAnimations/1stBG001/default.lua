
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
		Frame_i = 1,	Frame_l = 2,
		Spin = true,	Zoom = 0.8,
		Script = "SpaceEffects/Line.lua",
		Type = "Line"
	}

} )

params:ParTweak( tweaks )

return params:Load()
