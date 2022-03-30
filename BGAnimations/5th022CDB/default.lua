local params = BGA_G.Create( {
	Frame_i = 13,
	Frame_l = 16,
	Y_coord = 1,
	Y_num = 2,
	HurryTweenBy = 2,
	Commands = { "Move" }
} )

return loadfile( BGA_G.BPath("5th022AD") )( params )