
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/CAB 5x4.png",
		X_num = 5,
		Y_num = { -2, 1 },
		Frame_i = 10,
		Cleanup = true
	},

	{ Remove = true }

} )

local params_2 = BGA_G.Create( {
	File = "5th/Sprites/CA 4x3.png",
	Frame_i = 7,
	Script = "SpaceEffects/RoundTrace.lua"
} )

params_2:ParTweak(sub)

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th001A") )( params ),
	params_2:Load()
}