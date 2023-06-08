
local tweaks = ...

local params = beat4sprite.create {

	{		
		File = "5th/Backgrounds/CA.png",
		Columns = 1,		MirrorX = true
	},

	{
		File = "5th/Sprites/CABC 1x4.png",
		Rows = 2,
		lastState = 4,
		scrollY = -1,
		tweenRate = 2,
		Commands = "Move"
	}

}

params:tweak( tweaks )

return params:Load()