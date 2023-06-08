
local params = beat4sprite.create( {
	{
		Columns = 2,
		scrollX = 0
	}	
} )

local t = loadfile( beat4sprite.Paths.getBGAFile("5th034A") )( params )

local params = beat4sprite.create( {
	File = "5th/Sprites/DABCDE 4x3.png",
	firstState = 1,
	lastState = 12,
	Columns = 5,
	Rows = 1,
	scrollX = -1,
	tweenRate = 2,
	Commands = { "Move" }
} )

return Def.ActorFrame{
	t,	params:Load()
}