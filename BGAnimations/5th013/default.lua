
local params = BGA_G.Create( {

	{
		File = "5th/Sprites/CAB 5x4.png",
		Frame_i = 8,
		Cleanup = true,
		X_num = 5,
		Y_num = { -2, 1 } 
	},

	{ Remove = true }

} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th001A") )( params ),
	BGA_G.Load( {
		Index = 3, Frame_i = 1,
		File = "5th/Sprites/CAB 5x4.png",
		Script = "SpaceEffects/Bounce.lua"
	} )
}