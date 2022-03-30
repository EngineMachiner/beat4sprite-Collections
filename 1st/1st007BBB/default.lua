
local params = BGA_G.Create( {

	{
		File = "1st/Backgrounds/D2.png",
		X_num = { 0, 1 },
		Y_num = { -1, 0 },
		X_pos = 0.75,
		Zoom = 0.5,
		HurryTweenBy = 4,
		Commands = "Move",
		X_coord = -1

	},

	{
		File = "1st/Sprites/C 5x1.png",
		Frames = { 1, 5 }, Slices = 8,
		Commands = "FramePerSprite", Zoom = 0.25,
		Skip = true,	Clockwise = true,
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral"
	}

} )

return params:Load()