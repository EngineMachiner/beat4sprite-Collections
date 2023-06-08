
local tweaks = ...

local params = beat4sprite.create {

	{
		File = beat4sprite.GAMESTATE.getSongBG(),
		Commands = "Mirror",
		MirrorX = true,
		Columns = 1
	},

	{
		File = "1st/Sprites/Gradients/1stB 2x2.png",
		Columns = 4, Rows = 2, Zoom = 0.5,
		Alpha = 0.25, lastState = 4,
		AnimationRate = 0.1875
	}

}

params:tweak( tweaks )

return params:Load()