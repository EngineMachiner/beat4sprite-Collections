
local tweaks = ...

local params = beat4sprite.create {

	{
		File = beat4sprite.GAMESTATE.getSongBG(),
		MirrorX = true,
		Columns = 1
	},

	{
		File = "1st/Sprites/HSV/B 4x1.png",
		Columns = 1, 		lastState = 4,		AnimationRate = 0.5,
		MirrorX = true, 	Color = Color.Black
	}
	
}

params:tweak( tweaks )

return params:Load()