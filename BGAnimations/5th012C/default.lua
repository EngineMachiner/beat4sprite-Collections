
local params = beat4sprite.create( {

	File = "5th/Sprites/A 4x3.png",
	firstState = 5,
	lastState = 6,
	Script = "WallBumps.lua"

} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th012A") )(),
	params:Load()
}