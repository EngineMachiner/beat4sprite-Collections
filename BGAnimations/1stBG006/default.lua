
local params = beat4sprite.create {

	{
		File = beat4sprite.GAMESTATE.getSongBG(),
		Script = "Kaleidoscopes/Single.lua"
	},

	{
		File = "1st/Sprites/I 4x4.png",
		Columns = 2,		Rows = { -2, 1 },	MirrorX = "Rows",
		lastState = 16,		Commands = { "Color", "Blend" },
		Blend = "BlendMode_Modulate",		Color = color("0,0,1,1")
	}

}

return params:Load()