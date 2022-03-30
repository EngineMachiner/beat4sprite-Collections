
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/A 4x3.png",
		Frame_i = 11,
		Frame_l = 12,
		Cleanup = true,
		X_num = { -4, 3 },
		Y_num = 1,
	},

	{ Remove = true }

} )

	params:ParTweak( sub )

return loadfile( BGA_G.BPath("5th001A") )( params )