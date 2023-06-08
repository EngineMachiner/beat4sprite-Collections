
local params = beat4sprite.create( {

	{
		File = "1st/Backgrounds/D2.png",
		Columns = { 0, 1 },
		Rows = { -1, 0 },
		Zoom = 0.5,
		tweenRate = 4,
		Commands = "Move",
		scrollX = -1

	},

	{
		File = "1st/Sprites/C 5x1.png",
		States = { 1, 5 },
		Commands = "StatePerSprite", Zoom = 0.5,
		Skip = true,	Clockwise = true,
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral",	AnimationTypes = "Static"
	}

} )

return params:Load()