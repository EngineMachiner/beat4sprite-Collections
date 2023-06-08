
local params = beat4sprite.create( {

	File = "5th/Sprites/AB 4x4.png",
	firstState = 9,		Spin = true,	Commands = "Shade",
	Script = "SpaceEffects/Line.lua",
	Type = "Line"

} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th016A") )(),
	params:Load()
}