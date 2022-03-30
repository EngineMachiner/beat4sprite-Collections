
local sub = ...

local params = BGA_G.Create( {

	FileTweak = BGA_G.BPath("5th001A"),

	{
		File = "5th/Sprites/DABC 4x4.png",
		X_num = { -4, 5 },	Y_num = 2,
		Frame_i = 15,	X_coord = -1,
		Y_coord = -1,	Commands = "Move",
		Cleanup = true
	},

	{ Remove = true }

} )

local params_2 = params:Copy()
params_2[1]:ParTweak( {
	Class = "Quad",		Color = "RainbowFlash",
	Commands = { "Move", "Blend" }
} )

local params_3 = BGA_G.Create( {
	Index = 3,
	File = "5th/Sprites/DABC 4x4.png",
	Frame_i = 11,	Frame_l = 12,
	Dir = "Down",	Spin = true,	Shade = true,
	Commands = "TwoSprites",
	Script = "Particles.lua"
} )

params_3:ParTweak( sub )

return Def.ActorFrame{ 
	params:Load(),		params_2:Load(),
	params_3:Load()
}