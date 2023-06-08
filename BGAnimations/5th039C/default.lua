
local params = beat4sprite.create( {
	File = "5th/Sprites/DABC 4x4.png",
	firstState = 9,	Script = "LineXY.lua"
} )

return Def.ActorFrame{ 
	loadfile( beat4sprite.Paths.getBGAFile("5th039A") )(),
	params:Load()
}