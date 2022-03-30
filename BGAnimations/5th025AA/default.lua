
local params = BGA_G.Create( {

	{
		File = "5th/Sprites/DABC 4x4.png",
		X_num = { -4, 3 },
		Y_num = 2,
		Frame_i = 13,
		Commands = "Move",
		Y_coord = -1,
		Cleanup = true
	},

	{ Remove = true }

} )

local params_2 = BGA_G.Create( {
	File = "5th/Sprites/DA 4x3.png",
	Frame_i = 1,
	Frame_l = 2,
	Dir = "Up"
} )

return Def.ActorFrame{

	loadfile( BGA_G.BPath("5th001A") )( params ),
	loadfile( BGA_G.SPath .. "Particles.lua" )( params_2 )

}