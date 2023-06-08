
local sub = ...

local tweaks = {
	
	File = "/5th/Backgrounds/BABC 2x2.png",
	Columns = { -2, 1 },	Rows = { -1, 0 },
	firstState = 3,	MirrorX = true,
	Commands = "Mirror",	Cleanup = true
}

local params = beat4sprite.create( {
	
	Script = "SpaceEffects/RoundTrace.lua",
	File = "/5th/Sprites/BAB 4x4.png",
	firstState = 11
} )

params:tweak( sub )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th069A") )( tweaks ),
	params:Load()
}