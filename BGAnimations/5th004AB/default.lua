
local tweaks = {
	File = "5th/Sprites/HSV/DAB2 4x4.png",
	firstState = 6,
	Commands = { "Move", "Rainbow" }
}

return loadfile( beat4sprite.Paths.getBGAFile("5th004A") )( tweaks )