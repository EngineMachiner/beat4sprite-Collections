
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/HSV/DAB2 4x4.png",
		Frame_i = 5,
		X_num = { -4, 3 },
		Y_num = 2,
		Commands = { "Rainbow", "Move" },
		Y_coord = -1,
		Cleanup = true
	},

	{ Remove = true }

} )

local params_2 = BGA_G.Create( {
	Index = 3,
	File = "5th/Sprites/DABC 4x4.png",
	Frame_i = 11,
	Frame_l = 12,
	Commands = "TwoSprites",
	Rotation = true,
	Script = "SpiralStaticTrace.lua"
} )

params_2:ParTweak(sub)
params:ParTweak(sub)

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th001A") )( params ),
	params_2:Load()
}