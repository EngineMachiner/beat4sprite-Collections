
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/DABC 4x4.png",
		X_num = { -4, 3 },
		Y_num = { -2, 1 },
		Frame_i = 16,
		Cleanup = true
	},

	{ Remove = true }

} )

local params_2 = BGA_G.Create( {	
	File = "5th/Sprites/DABC 4x4.png",
	Frame_i = 11,
	Frame_l = 12,
	Commands = "TwoSprites",
	Script = "LineXY.lua"
} )

	params_2:ParTweak(sub)

local t = Def.ActorFrame{
	loadfile( BGA_G.BPath("5th001A") )( params ),
	params_2:Load()
}

return Def.ActorFrame{ t }