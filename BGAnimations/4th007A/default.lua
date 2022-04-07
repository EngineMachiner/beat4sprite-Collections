
local args = ...

local params = BGA_G.Create( {

	{	
		File = "4th/Sprites/BAB 5x4.png",
		Frames = 13,
		X_num = { -6, 4 },
		Y_num = 2,
		TCV = { 0, -1 },
		HurryTweenBy = 2
	},

	{
		File = "4th/Sprites/BAB 5x4.png",
		Frames = 12,
		Dir = "Down",
		Spin = true,
		Color = color("1,0.25,0.25,1"),
		Blend = 'add',
		Alpha = 0.75,
		Script = "Particles.lua"
	}

} )

params:ParTweak( args )

return params:Load()