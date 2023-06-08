
local t = beat4sprite.ActorFrame()

local params = beat4sprite.create( {

	{
		Columns = 2,
		scrollX = 0
	}	

} )

	t[#t+1] = loadfile( beat4sprite.Paths.getBGAFile("5th034A") )( params )

local params = beat4sprite.create( {
	File = "5th/Sprites/DABCDE 4x3.png",
	firstState = 1,	lastState = 12,
	Columns = { -3, 4 },	Rows = { -1, 2 },
	scrollX = -1,	scrollY = -1,
	tweenRate = 2,	Commands = { "Move" }
} )

	t[#t+1] = params:Load()

return Def.ActorFrame{ t }