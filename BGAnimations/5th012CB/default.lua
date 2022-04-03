
local params = BGA_G.Create( {
	File = "5th/Sprites/A 4x3.png",
	Frame_i = 5, SleepMove = true,	Frame_l = 6,
	Script = "WallBumps.lua"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th012A") )(),
	params:Load()
}