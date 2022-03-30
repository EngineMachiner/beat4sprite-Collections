
local params = BGA_G.Create( {

	{
		File = "1st/Backgrounds/H.png",
		Script = "Kaleidoscopes/Main.lua"
	},

	{
		File = "1st/Sprites/D 4x2.png",
		Frame_l = 8,	InitRot = { 0, 0, 90 },
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral",	Slices = 2
	}

} )

return params:Load()