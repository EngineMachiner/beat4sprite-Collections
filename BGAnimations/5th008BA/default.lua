
local tweaks = { Index = 3, Remove = true }

local params = BGA_G.Create( {

	{ Actors = loadfile( BGA_G.BPath("5th008AA") )( tweaks ) },

	{	
		File = "5th/Sprites/A 4x3.png",
		Frame_i = 5,	Frame_l = 6,
		Script = "LineXY.lua"
	}
	
} )

return params:Load()