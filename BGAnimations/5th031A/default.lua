
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/DA 4x3.png",
		Frame_i = 11,	Frame_l = 12,
		Commands = "StairsStates",
		RandomInitState = false
	},

	{ Remove = true }

} )

params:ParTweak( sub )

return loadfile( BGA_G.BPath("5th001A") )( params )