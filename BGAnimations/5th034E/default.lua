
local sub = ...

local params = BGA_G.Create( {
	File = "5th/Sprites/DABCDE 4x3.png",
	Frame_i = 1,	Frame_l = 12,
	X_num = 5,	Y_num = 1,
	X_coord = -1,	HurryTweenBy = 2,
	Commands = { "Move" }
} )

local tweaks = { X_num = 2,	X_coord = 0	}
BGA_G.ParTweak( tweaks, sub )

return Def.ActorFrame{ 
	loadfile( BGA_G.BPath("5th034A") )( tweaks ),
	BGA_G.IDest_Quad(),
	params:Load()
}