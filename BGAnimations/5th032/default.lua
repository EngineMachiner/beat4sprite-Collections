
local params = {
	AnimationRate = 4,		Commands = ""
}

local params_2 = beat4sprite.create {

	File = "5th/Sprites/DABC 4x4.png",
	firstState = 9,			lastState = 10,
	Columns = { -4, 3 },	Rows = { -2, 1 },
	AnimationRate = 4,		SpinStyle = 2,
	Commands = "SpinXY",

}

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th031A") )( params ),
	params_2:Load()
}