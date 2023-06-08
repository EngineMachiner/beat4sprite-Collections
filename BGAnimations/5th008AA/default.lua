
local sub = ...

local tweaks = {

	{
		File = "/5th/Sprites/AB 4x4.png",
		firstState = 7,
		lastState = 8,
		Columns = { -4, 3 },
		Rows = { -2, 1 },
		Cleanup = true
	},

	{ Remove = true }

}

local a = loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( tweaks )

local params = beat4sprite.create( {
	Index = 3,
	File = "/5th/Sprites/ABC 4x4.png",
	Columns = { -4, 3 },
	Rows = { -2, 1 },
	firstState = 5,
	lastState = 8,
	Commands = "RandomDelays"
} )

params:tweak( sub )

return Def.ActorFrame{ a, beat4sprite.Load(params) }