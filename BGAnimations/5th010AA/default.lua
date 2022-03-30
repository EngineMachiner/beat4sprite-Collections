local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/DAB 4x4.png",
		Frame_i = 9,
		Frame_l = 12,
		X_num = { -4, 3 },
		Y_num = { -2, 1 },
		Cleanup = true
	},

	{ Remove = true }

} )
	
params:ParTweak( sub )

return loadfile( BGA_G.BPath("5th001A") )( params )