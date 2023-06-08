

local params = beat4sprite.create {

	{
		File = "/5th/Sprites/DABCDE 4x3.png",
		Rows = { -2, 1 },		Columns = { -4, 3 },
		lastState = 12,			scrollY = -1,
		tweenRate = 2,			Cleanup = true,
	},

	{ Remove = true }

}

local params_2 = params:copy()

params_2[1]:tweak {
	Class = "Quad",			Blend = true,
	Fade = { 4, 1 },		posX = 0,
	Color = Color.Red
}

params_2[2] = params_2[1]:copy():tweak { Color = Color.Black,	posX = -1 }

return beat4sprite.ActorFrame() .. {

	beat4sprite.Sprite.colorQuad( Color.Black ),
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params ),
	params_2:Load()

}