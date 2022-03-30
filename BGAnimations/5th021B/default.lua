local params = BGA_G.Create( {

	{
		File = "5th/Backgrounds/BA.png",
		X_num = 1,
		Commands = "Mirror",
		BGMirror = true,
		Cleanup = true	
	},

	{ Remove = true }

} )

local params_2 = BGA_G.Create( {

	{
		File = "5th/Sprites/BAB 4x4.png",
		Frame_i = 3,
		Frame_l = 4,
		X_num = { -2, 1 },
		Y_num = { -2, 1 },
		Commands = "StairsStates",
		Cleanup = true		
	},

	{ Remove = true }

} )

return Def.ActorFrame{

	loadfile( BGA_G.BPath("5th001A") )( params ),
	loadfile( BGA_G.BPath("5th001A") )( params_2 )

}