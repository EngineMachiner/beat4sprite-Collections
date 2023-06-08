
local tweaks = { Index = 3, Remove = true }

local params = beat4sprite.create( {

	{ Actors = loadfile( beat4sprite.Paths.getBGAFile("5th008AA") )( tweaks ) },

	{	
		File = "5th/Sprites/A 4x3.png",
		firstState = 5,	lastState = 6,
		Script = "LineXY.lua"
	}
	
} )

return params:Load()