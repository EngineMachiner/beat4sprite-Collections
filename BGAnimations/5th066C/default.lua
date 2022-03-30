
local sub = ...

local tweaks = BGA_G.Create( {

	{
		X_num = { -6, 5 },
		File = "5th/Sprites/CAB 5x4.png",
		Frame_i = 8,	X_coord = 1
	},

	{ Index = 3,	Remove = true }

} )

tweaks:ParTweak( sub )

local params = BGA_G.Create( {
	File = "5th/Sprites/CAB 5x4.png",
	X_num = 5,
	Y_num = { -2, 1 },
	Frame_i = 4,
} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th042A") )( tweaks ),
	params:Load()
}