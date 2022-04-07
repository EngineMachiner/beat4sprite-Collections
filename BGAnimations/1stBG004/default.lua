
local tweaks = ...

local params = BGA_G.Create( {

	{
		File = BGA_G.SongBGPath(),
		Commands = "Mirror",
		BGMirror = true,
		X_num = 1
	},

	{
		File = "1st/Sprites/C 5x1.png",
		Frames = { 1, 5 },
		Commands = "FramePerSprite", Zoom = 0.25,
		Skip = true,	Clockwise = true,
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral"
	}

} )

params:ParTweak( tweaks )

return params:Load()