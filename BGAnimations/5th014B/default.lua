
local external = ...

local params = beat4sprite.create {
	firstState = 7,	lastState = 8,
	SkippyScroll = true, scrollX = -1, scrollY = -1,
	Columns = { -4, 5 },	Rows = { -1, 2 },
	Commands = ""
}

local params_2 = beat4sprite.create {
	Index = 2,
	File = "5th/Sprites/DA 4x3.png",
	firstState = 1,		lastState = 2,
	Script = "SpaceEffects/RoundTrace.lua"
}

params:tweak(external)			params_2:tweak(external)

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th014AB") )( params ),		params_2:Load()
}