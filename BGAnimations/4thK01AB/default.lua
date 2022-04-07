
local args = ...

local tweaks = {
	Index = 2,
	Remove = true,
	ParTweak = BGA_G.ParTweak
}

local params = BGA_G.Create( {
	Index = 3,
	File = "4th/Sprites/ABCDEF 5x4.png",
	Frames = 16,	X_num = 5,
	Y_num = { -2, 3 },	Zoom = 0.925,
	HurryTweenBy = 2,
	Commands = { "Rainbow", "SpinFrame", "Alpha" },
	Script = "AFTSpin.lua"
} )

tweaks:ParTweak( args )
params:ParTweak( args )
	
return Def.ActorFrame{
	loadfile( BGA_G.BPath("4thK01A") )( tweaks ),
	params:Load()
}