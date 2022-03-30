
local params = BGA_G.Create( {
	File = "/5th/Sprites/DABC 4x4.png",
	Script = "WallBumps.lua",
	Frame_i = 1,	Frame_l = 2
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5thBG002A") )(),
	params:Load()
}