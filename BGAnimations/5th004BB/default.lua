
local tweaks = {
	File = "5th/Sprites/HSV/DAB2 4x4.png",
	Commands = { "Move", "Rainbow" },
	firstState = 6,	scrollY = -1
}

return loadfile( beat4sprite.Paths.getBGAFile("5th004A") )( tweaks )