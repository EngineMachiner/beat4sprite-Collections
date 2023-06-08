
local params = beat4sprite.create {
	Index = 2,
	File = "5th/Sprites/BA 4x3.png",
	firstState = 9,
	lastState = 10,
	Commands = "StatePerSprite",
	AnimationTypes = "Static",
	Script = "LineXY.lua"
}

return loadfile( beat4sprite.Paths.getBGAFile("5th001G") )( params )