
local params = BGA_G.Create( {
	Frame_i = 13,	Frame_l = 16,
	Y_num = 2, 	X_num = 5, 
	Commands = "Move",
	X_coord = -1,	Y_coord = -1,
	HurryTweenBy = 2
} )

return loadfile( BGA_G.BPath("5th022AD") )( params )