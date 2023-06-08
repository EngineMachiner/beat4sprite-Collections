
local sub = ...

local params = {
	firstState = 11,	Commands = "",
	Remove = "lastState"
}

local params_2 = beat4sprite.create( {

	File = "5th/Sprites/DABC 4x4.png",
	firstState = 9,	lastState = 10,
	Columns = { -4, 3 },	Rows = { -2, 1 },
	AnimationRate = 4,	SpinStyle = 2,
	Commands = { "SpinXY" }

} )

beat4sprite.tweak( params, sub )
	
return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th031A") )( params ),
	params_2:Load()
}