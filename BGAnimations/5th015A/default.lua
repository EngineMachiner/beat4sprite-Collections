
local sub = ...

local params = beat4sprite.create {

	{
		File = "5th/Sprites/BABCD 4x1.png",
		firstState = 1,
		lastState = 4,
		Cleanup = true,
		Commands = "StairsStates",
		Columns = { -4, 3 },
	},

	{ Remove = true }

}

local params_2 = beat4sprite.create {
	File = "5th/Sprites/B 4x3.png",
	firstState = 1,		lastState = 6,
	Move = { x = 0, y = 1 },
	Script = "SpaceEffects/Particles.lua"
}

params_2:tweak( sub )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params ),		params_2:Load()
}