
local tweaks = {
	Index = 2,
	File = "5th/Sprites/CAB 5x4.png",
	Cleanup = true,
	firstState = 11,	lastState = 15,
	Script = "LineXY.lua"
}

return loadfile( beat4sprite.Paths.getBGAFile("5th068A") )( tweaks )