

local params = BGA_G.Create( {

	{
		File = "/5th/Sprites/DABCDE 4x3.png",
		Cleanup = true,
		Y_num = { -2, 1 },
		X_num = { -4, 3 },
		Frame_l = 12,
		Y_coord = -1,
		HurryTweenBy = 4,
		Commands = "Move",
	},

	{ Remove = true }

} )

local params_2 = BGA_G.Create( { 
	params[1]:Copy()
} )

params_2[1]:ParTweak( {
	Class = "Quad",		Blend = true,
	Fade = { 4, 1 },		EffectOffset = -4.5,
	FadePeriodBy = 0.5,		X_pos = 0,
	Color = Color.Red
} )

params_2[2] = params_2[1]:Copy()
params_2[2]:ParTweak( {
	Color = Color.Black,	X_pos = - 1
} )

return Def.ActorFrame{

	Def.Quad{
		OnCommand=function(self)
			self:visible(true)
			self:zoomto(SCREEN_WIDTH,SCREEN_HEIGHT)
			self:Center()
			self:diffuse(Color.Black)
		end,
		LoseFocusCommand=function(self)
			self:visible(false)
		end
	},

	loadfile( BGA_G.BPath("5th001A") )( params ),
	params_2:Load()

}