
local params = BGA_G.Create( {

	{
		File = "/1st/Sprites/Gradients/1stBall 3x5.png",
		X_num = 1, Frames = { 1, 15 }, Zoom = 5, BGMirror = true
	},

	{
		File = "/1st/Sprites/H 5x4.png",
		Frame_i = 17, Script = "SpaceEffects/Line.lua",
		Num = 4, Type = "Line"
	}

} ) 

return params:Load()