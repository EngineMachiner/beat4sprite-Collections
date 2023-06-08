
local sub = ...

local params = beat4sprite.create( {
	File = "5th/Sprites/BA 4x3.png",
	firstState = 12,	Columns = { -4, 3 },
	Rows = 1
} )

local params_2 = beat4sprite.create( {
	Index = 2,
	File = "5th/Sprites/B 4x3.png",
	firstState = 1,	lastState = 6,	Move = "Left",
	Script = "SpaceEffects/Particles.lua"
} )

params:tweak( sub )
params_2:tweak( sub )

return Def.ActorFrame{
	params:Load(),	params_2:Load()
}