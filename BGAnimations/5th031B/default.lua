
local sub = ...

local params = BGA_G.Create( {
	File = "5th/Sprites/HSV/DA 4x3.png",
	Frame_i = 1,	Frame_l = 2
} )

params:ParTweak( sub )

local params_2 = BGA_G.Create( {

	{ 
		File = "5th/Sprites/DA 4x3.png",
		X_num = { -4, 3 },	Y_num = 1,
		Frame_i = 12,
		Cleanup = true
	},

	{ Remove = true }

} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th001A") )( params_2 ),
	loadfile( BGA_G.BPath("5th031A") )( params )
}