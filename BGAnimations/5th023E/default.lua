local params = BGA_G.Create( {
	Frame_i = 9,	Frame_l = 10,
	Commands = "NoAnimation"
} )

return loadfile( BGA_G.BPath("5th023C") )( params )