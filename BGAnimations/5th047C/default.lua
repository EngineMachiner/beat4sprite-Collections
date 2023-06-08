
local tweaks = {
	File = "5th/Sprites/HSV/DAB2 4x4.png",
	firstState = 10,	lastState = 11,
	Commands = { "Move", "Rainbow" },
	scrollY = 1,	scrollX = 1,
	Columns = { -5, 4 },	Rows = 2
}

local params = beat4sprite.create( {
	File = "5th/Sprites/DABC 4x4.png",
	firstState = 9,	lastState = 10,
	Commands = "StatePerSprite",
	AnimationTypes = "Static",
	Script = "LineXY.lua"
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th047A") )( tweaks ),
	params:Load()
}