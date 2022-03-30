local params = BGA_G.Create( {
	Frame_i = 16,
	Frame_l = 13,
	Y_coord = 1,
	Y_num = 2,
	HurryTweenBy = 2,
	Commands = { "Move" }
} )

return loadfile( BGA_G.BPath("5th022AD") )( params )