local tweaks = {

	{
		File = "5th/Sprites/AB 4x4.png",
		Frame_i = 14,
		X_num = { -4, 3 },
		Y_num = { -2, 1 },
		Cleanup = true
	},

	{
		X_num = 2,
		Y_num = 1,
		Commands = { "Align", "RandomStates" }
	}

}

return Def.ActorFrame{

	loadfile( BGA_G.BPath("5th027A") )( tweaks )

}