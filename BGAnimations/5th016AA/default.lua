
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/A 4x3.png",
		Frame_i = 11,
		Frame_l = 12,
		Cleanup = true,
		X_num = { -4, 3 },
		Y_num = 1,
	},

	{ Remove = true },

	{
		File = "5th/Sprites/AB 4x4.png",
		Frame_i = 10,	Dir = "Out",
		Script = "SpaceEffects/RoundTrace.lua"
	}

} )

	params:ParTweak( sub )

return Def.ActorFrame{

	loadfile( BGA_G.BPath("5th001A") )( params ),
	params[3]:Load()

}