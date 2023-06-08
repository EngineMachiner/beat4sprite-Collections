
local params = beat4sprite.create( {
	File = "5th/Sprites/DAB 4x4.png",
	Columns = { -4, 5 },
	Rows = 2,
	firstState = 5,
	lastState = 8,
	scrollX = 1,
	scrollY = 1,
	Commands = "Move"
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th059") )(),
	params:Load()
}