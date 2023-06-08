local params = beat4sprite.create( {

	{
		File = "5th/Backgrounds/BA.png",
		Columns = 1,
		Commands = "Mirror",
		MirrorX = true,
		Cleanup = true	
	},

	{ Remove = true }

} )

local params_2 = beat4sprite.create( {

	{
		File = "5th/Sprites/BAB 4x4.png",
		firstState = 3,
		lastState = 4,
		Columns = { -2, 1 },
		Rows = { -2, 1 },
		Commands = "StairsStates",
		Cleanup = true		
	},

	{ Remove = true }

} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params ),
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params_2 )
}