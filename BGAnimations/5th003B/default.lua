
local tweaks = {
	Cleanup = true,
	File = "5th/Sprites/CA 4x3.png",
	Columns = { -4, 3 },	Rows = 1,
	firstState = 4,	lastState = 6
}

return loadfile( beat4sprite.Paths.getBGAFile("5th003A") )( tweaks )