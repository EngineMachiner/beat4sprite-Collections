
local args = ...

local params = beat4sprite.create( {
	File = "4th/Sprites/B2 5x4.png",
	Columns = 4,
	Rows = { -2, 1 },
	States = { 1, 15 },
	AnimationRate = 2,
	AnimationTypes = "Random"
} )

params:tweak( args )

return params:Load()