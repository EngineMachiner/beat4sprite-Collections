

local params = beat4sprite.create( {
	File = "/5th/Sprites/DABC 4x4.png",
	firstState = 9,	lastState = 10,
	Commands = "StatePerSprite",
	AnimationTypes = "Static",
	Script = "LineXY.lua"
} )

local params_2 = beat4sprite.create( {
	File = "/5th/Sprites/HSV/DA 4x3.png",
	firstState = 3,	Columns = 5,	 scrollX = -1,
	Commands = { "Move", "Rainbow" }
} )

return Def.ActorFrame{ 
	loadfile( beat4sprite.Paths.getBGAFile("5th039A") )( params_2 ),
	params:Load()
}