
local tweaks = ...

local params = beat4sprite.create( {

	{
		File = "1st/Sprites/Gradients/1stBA 4x2.png",
		Columns = 4,
		Rows = 2,
		Zoom = 0.5,
		lastState = 8,
		AnimationRate = 0.25
	},

	{
		File = "1st/Sprites/H 5x4.png",
		Script = "WallBumps.lua",
		firstState = 17,
		Commands = "StatePerSprite"
	}


} )

params:tweak( tweaks )

return params:Load()