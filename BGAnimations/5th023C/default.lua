
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/AB 4x4.png",
		X_num = { -4, 3 },
		Y_num = { -2, 1 },
		Frame_i = 13,
		Commands = { "Move" },
		Cleanup = true
	},

	{ Remove = true }

} )
	

local params_2 = BGA_G.Create( {
	File = "5th/Sprites/AB 4x4.png",
	Frame_i = 9,
	Script = "WallBumps.lua"
} )

params_2:ParTweak( sub )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th001A") )( params ),
	params_2:Load()
}