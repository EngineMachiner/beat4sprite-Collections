
local tweaks = {

	{
		Y_num = { -2, 1 },	Y_coord = 0,
		Commands = "StairsStates"
	},

	{ Remove = true }
	
}

local params = {
	File = "/5th/Sprites/DABCDE 4x3.png",
	Frame_i = 1,	Frame_l = 12,
	Script = "LineXY.lua"
}

return Def.ActorFrame{ 
	loadfile( BGA_G.BPath("5th006A") )( tweaks ),
	BGA_G.Load( params )
}