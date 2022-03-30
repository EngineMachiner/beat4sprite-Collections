
local tweaks = ...

local params = BGA_G.Create( {

	{
		File = BGA_G.SongBGPath(),
		Commands = { "Color", "Mirror" },
		Color = color("#808080"),
		BGMirror = true,
		X_num = 1
	},

	{
		File = "1st/Sprites/HSV/C.png",
		Zoom = 1/3,
		Commands = { "Rainbow", "Blend" },
		Blend = "BlendMode_Add",
		X_num = 2,	Y_num = 1
	}

} )

params:ParTweak( tweaks )

return params:Load()