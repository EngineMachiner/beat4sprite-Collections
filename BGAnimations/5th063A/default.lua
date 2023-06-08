
local sub = ...

local params = beat4sprite.create( {
	Script = "SpaceEffects/Particles.lua",
	File = "/5th/Sprites/BA 4x3.png",
	firstState = 1,	lastState = 4,
	Move = "Right",	Cleanup = true
} )

params:tweak( sub )
params.Index = 2

return loadfile( beat4sprite.Paths.getBGAFile("5th052") )( params )