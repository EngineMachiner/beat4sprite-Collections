local params = beat4sprite.create( {

	{
		File = "5th/Sprites/DA 4x3.png",
		firstState = 7,
		Cleanup = true,
		Commands = "Move",
		scrollY = -1,
		Columns = { -4, 3 },
		Rows = { -1, 2 },
		tweenRate = 2
	},

	{ Remove = true }

} )

local params_2 = beat4sprite.create( {
	File = "5th/Sprites/DAB 4x4.png",	firstState = 1,
	lastState = 4,	Script = "WallBumps.lua"
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params ),
	params_2:Load()
}