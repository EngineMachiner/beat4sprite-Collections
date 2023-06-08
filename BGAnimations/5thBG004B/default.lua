
return Def.ActorFrame{

	loadfile( beat4sprite.Paths.getBGAFile("5thBG004A") )(),

	beat4sprite.Load { 
		File = "5th/Sprites/HSV/DAB2 4x4.png",
		firstState = 12,	lastState = 13,
		Script = "RandomPos.lua",
		Commands = { "Rotation", "Rainbow" }
	}
	
}