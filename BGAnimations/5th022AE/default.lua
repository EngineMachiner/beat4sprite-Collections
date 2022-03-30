
local params = BGA_G.Create( {
	Frame_i = 13,
	Frame_l = 16,
	Commands = "Move",
	X_coord = -1
} )

return loadfile( BGA_G.BPath("5th022AD") )( params )