
local sub = ...

local params = {

	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{
		File = "5th/Sprites/CAB 5x4.png",
		Columns = 5,
		Rows = { -2, 1 },
		firstState = 7,
		Cleanup = true
	},

	{ Remove = true }

}

params = beat4sprite.create(params)
params:tweak( sub )

local params_2 = beat4sprite.create( {
	Index = 3,
	File = "5th/Sprites/CAB 5x4.png",
	firstState = 3,	Spin = true,
	Script = "SpaceEffects/Line.lua"
} )

params_2:tweak( sub )

return Def.ActorFrame{ params:Load(), params_2:Load() }