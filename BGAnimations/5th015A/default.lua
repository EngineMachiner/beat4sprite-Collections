
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/BABCD 4x1.png",
		Frame_i = 1,
		Frame_l = 4,
		Cleanup = true,
		Commands = "StairsStates",
		X_num = { -4, 3 },
	},

	{ Remove = true }

} )

local params_2 = BGA_G.Create( {
	File = "5th/Sprites/B 4x3.png",
	Frame_i = 1,
	Frame_l = 6,
	Dir = "Down",
	Script = "Particles.lua"
} )

params_2:ParTweak( sub )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th001A") )( params ),
	params_2:Load()
}