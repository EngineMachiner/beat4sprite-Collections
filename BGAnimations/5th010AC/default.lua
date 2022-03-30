
local sub = ...

local params = BGA_G.Create( {

	{
		File = "5th/Sprites/HSV/DAB2 4x4.png",
		Frame_i = 1,	Frame_l = 4,
		X_num = { -5, 4 },	X_coord = 1,
		HurryTweenBy = 2,	Commands = "Move",
		FileTweak = BGA_G.BPath("5th010AA")
	}, {}

} )

params:ParTweak( sub )

params[2] = params[1]:Copy()
params[2]:ParTweak( {
	Fade = { 1, 0.5 },	EffectOffset = 1.5,
	Class = "Quad",		Color = "Rainbow",
	Blend = "BlendMode_Modulate"
} )

return params:Load()