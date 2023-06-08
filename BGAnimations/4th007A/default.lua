
local args = ...

local params = beat4sprite.create( {

	{	
		File = "4th/Sprites/BAB 5x4.png",
		States = 13,
		Columns = { -6, 4 },
		Rows = 2,
		Scroll = { 0, -1 },
		tweenRate = 2
	},

	{
		File = "4th/Sprites/BAB 5x4.png",
		States = 12,
		Move = "Down",
		spinAngle = true,
		Color = color("1, 0.25, 0.25, 1"),
		Blend = 'add',
		Alpha = 0.75,
		Script = "SpaceEffects/Particles.lua"
	}

} )

params:tweak( args )

return params:Load()