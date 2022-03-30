return Def.ActorFrame{

	loadfile( BGA_G.BPath("5thBG010") )( { 
		HurryTweenBy = 0.5 
	} ),

	BGA_G.Load( { 
		File = "/5th/Sprites/HSV/DAB2 4x4.png",
		Frame_i = 12,	Frame_l = 13,
		Script = "RandomPos.lua",
		Commands = { "Rotation", "Rainbow" }
	} )
	
}