local params = BGA_G.Create( {

	{
		File = "5th/Sprites/DA 4x3.png",
		Frame_i = 7,
		Cleanup = true,
		Commands = "Move",
		Y_coord = -1,
		X_num = { -4, 3 },
		Y_num = { -1, 2 },
		HurryTweenBy = 2
	},

	{ Remove = true }

} )

local params_2 = BGA_G.Create( {
	File = "5th/Sprites/DAB 4x4.png",	Frame_i = 1,
	Frame_l = 4,	Script = "WallBumps.lua"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th001A") )( params ),
	params_2:Load()
}