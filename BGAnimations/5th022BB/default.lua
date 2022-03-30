local params = BGA_G.Create( {
	File = "5th/Sprites/HSV/DAB 4x4.png",
	Frame_i = 9,
	Frame_l = 12,
	Commands = "LineStates"
} )

return loadfile( BGA_G.BPath("5th022AD") )( params )