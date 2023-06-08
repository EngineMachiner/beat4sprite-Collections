
local sub = ...

local params = beat4sprite.create( {

	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{ 
		File = "5th/Sprites/CAB 5x4.png",
		Columns = { -5, 6 },		Rows = 2,
		firstState = 9,	scrollX = -1,
		scrollY = -1,	AnimationRate = 2,
		Commands = "Move",	Cleanup = true
	},

	{ Remove = true }

} )

local params_2 = beat4sprite.create( {
	Index = 3,
	File = "5th/Sprites/CAB 5x4.png",
	firstState = 1,	Columns = 5,
	Rows = { -2, 1 }
} )

params:tweak( sub )
params_2:tweak( sub )
	
return Def.ActorFrame{ params:Load(), params_2:Load() }