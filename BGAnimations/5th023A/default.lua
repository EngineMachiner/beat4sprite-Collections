
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/AB 4x4.png",
		X_num = { -4, 3 },
		Y_num = { -2, 1 },
		Frame_i = 13,
		Commands = { "Move", "Blink" },
		Cleanup = true
	},

	{ Remove = true }

} )
	

local params_2 = BGA_G.Create( {
	File = "5th/Sprites/A 4x3.png",
	Frame_i = 1,	Frame_l = 2,
	Shade = true,	Dir = "Down",
	Script = "Particles.lua"
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th001A") )( params ),
	params_2:Load()
}