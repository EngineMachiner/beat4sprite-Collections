

local args = ...

local params = BGA_G.Create( {

	{	
		File = "4th/Backgrounds/B.png",
		BGMirror = true,
		X_num = 1,		Type = 2,
		Script = "WarpingEffects/Flag.lua",
		Commands = "Rainbow"
	},

	{	
		File = "4th/Sprites/AB 5x4.png",
		Frames = 1,
		Script = "Particles.lua",
		Dir = "Left"
	},

	{	
		File = "4th/Sprites/AB 5x4.png",
		Frames = { 2, 15 },
		Blend = "BlendMode_Add",
		Script = "Particles.lua",
		Dir = "Left"
	}

} )

params:ParTweak( args )

return params:Load()