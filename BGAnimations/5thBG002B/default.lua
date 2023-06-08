
local params = beat4sprite.create( {
	File = "/5th/Sprites/DABC 4x4.png",
	Script = "WallBumps.lua",
	firstState = 1,	lastState = 2
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5thBG002A") )(),
	params:Load()
}