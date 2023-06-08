
local sub = ...

local params = beat4sprite.create {

	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{
		File = "5th/Sprites/BAB 4x4.png",
		Columns = { -4, 3 },	Rows = { -2, 1 },
		firstState = 5,	lastState = 6,
		Cleanup = true
	},

	{ Remove = true	}

}

local params_2 = beat4sprite.create {
	Index = 3,
	File = "5th/Sprites/B 4x3.png",
	firstState = 1,	lastState = 6,
	Script = "WallBumps.lua"
}

params:tweak( sub )				params_2:tweak( sub )

return Def.ActorFrame{ params:Load(), params_2:Load() }
