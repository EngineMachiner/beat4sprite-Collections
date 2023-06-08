
local params = beat4sprite.create { 
	File = "/5th/Sprites/DABC 4x4.png",
	firstState = 3,		 lastState = 4,
	Script = "LineXY.lua"
}

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th007B") )(),	params:Load()
}