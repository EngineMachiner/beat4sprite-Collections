
local t = BGA_G.Frame()

local params = BGA_G.Create( {

	{
		X_num = 2,
		X_coord = 0
	}	

} )

	t[#t+1] = loadfile( BGA_G.BPath("5th034A") )( params )

local params = BGA_G.Create( {
	File = "5th/Sprites/DABCDE 4x3.png",
	Frame_i = 1,	Frame_l = 12,
	X_num = { -3, 4 },	Y_num = { -1, 2 },
	X_coord = -1,	Y_coord = -1,
	HurryTweenBy = 2,	Commands = { "Move" }
} )

	t[#t+1] = params:Load()

return Def.ActorFrame{ t }