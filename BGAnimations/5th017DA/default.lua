
local sub = ...

local params = {
	{
		File = "5th/Sprites/CAB 5x4.png",
		firstState = 16,
		lastState = 20,
		Columns = 5,
		Rows = { -2, 1 },
		Remove = "MirrorX"
	}, {}
}

beat4sprite.tweak( params, sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th017AA") )( params )