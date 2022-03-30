
local sub = ...

local params = {

	FileTweak = BGA_G.BPath("5th001A"),

	{
		File = "5th/Sprites/D 5x4.png",
		X_num = 5,	Y_num = { -2, 1 },
		Frame_i = 1,	Frame_l = 20,
		Commands = "FramePerSprite",
		Cleanup = true
	},

	{ Remove = true }

}
params = BGA_G.Create(params)

params_2 = params:Copy()
params_2:ParTweak( {
	Index = 1,
	File = "5th/Sprites/HSV/D 5x4.png",
	Commands = { "FramePerSprite", "Pulse" }
} )

local params_3 = params[1]:Copy()
params_3:ParTweak( { 
	Fade = { 1, 1 },	Class = "Quad",
	Color = "Rainbow",
	Commands = { "Pulse", "Fade", "Blend" }
} )

params_3:ParTweak( sub )

return Def.ActorFrame{ 
	params:Load(),		params_2:Load(),
	params_3:Load()
}