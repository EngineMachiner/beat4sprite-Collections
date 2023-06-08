
local sub = ...

local params = beat4sprite.create {

	{
		File = "5th/Sprites/HSV/DAB2 4x4.png",
		firstState = 1,	lastState = 4,
		Columns = { -5, 4 },	scrollX = -1,
		tweakScript = beat4sprite.Paths.getBGAFile("5th010AA")
	}

}

params:tweak( sub )

params[2] = params[1]:copy()

params[2]:tweak {
	Fade = { 1, 0.5 },
	Class = "Quad",		Color = "Rainbow",
	Blend = "BlendMode_Modulate"
}

-- More color.
params[3] = params[2]:copy()

return params:Load()