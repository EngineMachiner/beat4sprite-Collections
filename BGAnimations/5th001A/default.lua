
local tweaks = ...

local params = beat4sprite.create {

	{
		File = "5th/Sprites/BA 4x3.png",
		Columns = { -4, 3 }, Rows = 1,
		States = { 5, 8 },
		AnimationTypes = "Random"
	},

	{	
		File = { "5th/Backgrounds/BAB2.png", "5th/Backgrounds/BAB.png" },
		scrollX = -1
	}

}

params:tweak(tweaks)

return params:Load()