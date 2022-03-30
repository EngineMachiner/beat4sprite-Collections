
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/DABC 4x4.png",
		Frame_i = 5,
		Frame_l = 6,
		X_num = { -4, 3 },
		Y_num = { -2, 1 }
	},

	{ Remove = true }

} )

	params:ParTweak( sub )

return loadfile( BGA_G.BPath("5th001A") )( params )