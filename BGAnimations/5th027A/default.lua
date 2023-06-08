
local sub = ...

local params = beat4sprite.create {

	{
		File = "5th/Sprites/ABCDE 1x4.png",
		Columns = 1,
		Rows = { -2, 1 },
		lastState = 4,
		Cleanup = true
	},

	{ Remove = true }

}

params:tweak(sub)

local params_2 = beat4sprite.create {
	Index = 3,
	File = "5th/Sprites/ABC 4x4.png",
	lastState = 4,
	Columns = { -4, 3 },
	Rows = { -2, 1 },
	Commands = "RandomDelays"
}

local t = Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params )
}

params_2:tweak(sub):Load(t)

return Def.ActorFrame{ t }