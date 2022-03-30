
local params = {
	Delay = 4,	Commands = ""
}

local params_2 = BGA_G.Create( {

	File = "5th/Sprites/DABC 4x4.png",
	Frame_i = 9,	Frame_l = 10,
	X_num = { -4, 3 },	Y_num = { -2, 1 },
	Delay = 4,	SpinC = true,
	Commands = { "SpinXY" }

} )

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th031A") )( params ),
	params_2:Load()
}