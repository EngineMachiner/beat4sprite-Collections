
local sub = ...

local params = beat4sprite.create {

	{
		File = "5th/Sprites/HSV/DAB2 4x4.png",
		firstState = 5,		Columns = { -4, 3 },		Rows = 2,
		Rainbow = true,		scrollY = -1,				Cleanup = true
	},

	{ Remove = true }

}

local params_2 = beat4sprite.create {
	Index = 3,
	File = "5th/Sprites/DABC 4x4.png",
	firstState = 11,	lastState = 12,
	AnimationTypes = { "Stairs", "Static" },
	Columns = { -1, 2 },	Rows = { -1, 2 },
	Script = "SpiralStaticTrace.lua"
}

params:tweak(sub)			params_2:tweak(sub)

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params ),		
	params_2:Load()
}