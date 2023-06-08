local t = beat4sprite.create {

	{
		File = "4th/Sprites/Gradients/A.png",
		Columns = { -6, 5 },			Rows = { -3, 2 },
		Zoom =  0.93,					SpinMag = { 0, 0, 90 },
		Color = color("#0000FF"),		TextureZoom = 0.625,		
		Spin = true,					Script = "Texture.lua"
	},

	{
		
		Set = {
			{ File = "4th/Sprites/ABCD 5x4.png",		Spin = true },
			{ File = "4th/Sprites/ABCDE 5x4.png",		States = { 5, 20 } }
		},
		Script = "Cyclic/Explode"

	},

	{
		Set = { File = "4th/Sprites/AB 5x4.png",	States = { 2, 15 } },		Cross = 1,
		Spin = true,	Script = "Cyclic/Explode",			Blend = 'add'
	},

}

return t:Load()
