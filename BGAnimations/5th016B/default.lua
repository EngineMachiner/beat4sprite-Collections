
local params = BGA_G.Create( {

	File = "5th/Sprites/AB 4x4.png",
	Frame_i = 9,
	Spin = true,	Commands = "Shade",
	Script = "SpaceEffects/Line.lua",
	Type = "Line"

} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th016A") )(),
	params:Load()
}