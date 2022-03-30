local params = BGA_G.Create( {
	File = "5th/Sprites/CA 4x3.png",
	Frame_i = 3,
	Frame_l = 1,
	X_num = { -4, 3 },
	Y_num = 1,
	Commands = "StairsStates"
} )

return Def.ActorFrame{
    loadfile( BGA_G.BPath("5thK1A") )(),
    params:Load()	
}