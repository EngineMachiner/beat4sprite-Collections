
local tweaks = {
	Index = 2,
	Cleanup = true,
	File = "/5th/Sprites/BAB 4x4.png",
	Columns = { -4, 5 },	Rows = 2,
	firstState = 1,	lastState = 2,
	scrollX = -1,	scrollY = -1
}

return loadfile( beat4sprite.Paths.getBGAFile("5th060A") )( tweaks )