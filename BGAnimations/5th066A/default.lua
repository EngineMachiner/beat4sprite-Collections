
local sub = ...

local params = BGA_G.Create( {
	File = "/5th/Sprites/CAB 5x4.png",
	X_num = { -6, 5 },	Y_num = { -2, 1 },
	Frame_i = 4,	Delay = 2,
	Commands = "Move",	X_coord = 1
} )

params:ParTweak( sub )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th042A") )( { Index = 3, Remove = true } ),
	params:Load()
}