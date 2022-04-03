
local params = BGA_G.Create( {
	File = "5th/Sprites/A 4x3.png",
	Frame_i = 3,	Frame_l = 6,
	Script = "WallBumps.lua",
	SleepMove = true,
	Commands = "RandomStates"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th012A") )(),
	params:Load()
}