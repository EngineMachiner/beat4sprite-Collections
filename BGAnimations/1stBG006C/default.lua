
local params = BGA_G.Create( {

	{
		File = BGA_G.SongBGPath(),
		X_num = 1,
		BGMirror = true,
		Script = "Kaleidoscopes/Main.lua"
	},

	{
		File = "1st/Sprites/Gradients/1stAfro 3x5.png",
		X_num = 1,
		Y_num = { -2, 0 },
		Frame_l = 15,
		Commands = "Mirror",
		Zoom = 2.5,
		BGMirror = true,
		Blend = 'add',
		Alpha = 0.5
	},
} ) 

return params:Load()