
local tweaks = ...

local params = beat4sprite.create( {

	{
		File = beat4sprite.GAMESTATE.getSongBG(),
		Commands = { "Color", "Mirror" },
		Color = color("#808080"),
		MirrorX = true,
		Columns = 1
	},

	{
		File = "1st/Sprites/HSV/C.png",
		Zoom = 1/3,
		Commands = { "Rainbow", "Blend" },
		Blend = "BlendMode_Add",
		Columns = 2,	Rows = 1
	}

} )

params:tweak( tweaks )

return params:Load()