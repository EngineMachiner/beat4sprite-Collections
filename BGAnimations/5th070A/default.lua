
local sub = ...

local tweaks = {
	
	File = "/5th/Backgrounds/BABC 2x2.png",
	X_num = { -2, 1 },	Y_num = { -1, 0 },
	Frame_i = 3,	BGMirror = true,
	Commands = "Mirror",	Cleanup = true
}

local params = BGA_G.Create( {
	
	Script = "SpaceEffects/RoundTrace.lua",
	File = "/5th/Sprites/BAB 4x4.png",
	Frame_i = 11
} )

params:ParTweak( sub )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th069A") )( tweaks ),
	params:Load()
}