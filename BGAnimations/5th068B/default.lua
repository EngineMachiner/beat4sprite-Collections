
local tweaks = {
	Index = 2,
	File = "5th/Sprites/CAB 5x4.png",
	Cleanup = true,
	Frame_i = 11,	Frame_l = 15,
	Script = "LineXY.lua"
}

return loadfile( BGA_G.BPath("5th068A") )( tweaks )