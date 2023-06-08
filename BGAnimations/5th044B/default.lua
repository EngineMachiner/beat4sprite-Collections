
local tweaks = ...

local params = beat4sprite.create( {
	{},		{ Remove = true }
} )

local params_2 = beat4sprite.create( {
	Index = 3,
	File = "5th/Sprites/CAB 5x4.png",
	firstState = 11,	lastState = 15,
	Move = "Up", 	Script = "SpaceEffects/Particles.lua"
} )

params:tweak( tweaks )
params_2:tweak( tweaks )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th044A") )( params ),
	params_2:Load()
}