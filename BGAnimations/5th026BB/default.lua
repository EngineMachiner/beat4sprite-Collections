
local params = BGA_G.Create( {

	{
		File = "5th/Sprites/A 4x3.png",
		X_num = { -4, 3 },
		Y_num = { -2, 2 },
		Frame_i = 9,
		Frame_l = 10,
		Commands = { "Move", "StairsStates" },
		Y_coord = 1,
		Cleanup = true
	},

	{ Remove = true }

} )

local params_2 = BGA_G.Create( {
	File = "5th/Sprites/AB 4x4.png",
	Frame_i = 3,
	Frame_l = 4
} )

return Def.ActorFrame{

	loadfile( BGA_G.BPath("5th001A") )( params ),
	loadfile( BGA_G.SPath .. "WallBumps.lua" )( params_2 )

}