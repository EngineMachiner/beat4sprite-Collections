
local sub = ...

local params = beat4sprite.create( {
	File = "/5th/Sprites/CAB 5x4.png",
	Columns = { -6, 5 },	Rows = { -2, 1 },
	firstState = 4,	AnimationRate = 2,
	Commands = "Move",	scrollX = 1
} )

params:tweak( sub )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th042A") )( { Index = 3, Remove = true } ),
	params:Load()
}