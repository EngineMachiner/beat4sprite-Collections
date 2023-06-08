
local args = ...

local params = beat4sprite.create {

	{

		File = { "4th/Backgrounds/A01.png", "4th/Backgrounds/A02.png" },
		Columns = 1,		Scroll = { -1, 0 },		Reversed = true

	},

	{	
		File = "4th/Sprites/A 1x4.png",
		Rows = { -2, 0 },		Spacing = { 1, 1.5 },
		States = { 1, 4 },		AnimationTypes = "Random",
		Blend = "BlendMode_Add"
	}

}

params:tweak( args )

return params:Load()