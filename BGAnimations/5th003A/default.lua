
local tweaks = ...

local params = beat4sprite.create( {

	{	
		File = "5th/Backgrounds/CA.png",
		Columns = 1,	MirrorX = true,
		Commands = "Mirror"
	},

	{
		File = "5th/Sprites/C 4x4.png",
		Columns = { -4, 3 },	Rows = { -2, 1 },
		firstState = 1,	lastState = 16,
		Commands = "RandomDelays"
	}

} ) 
 	
params:tweak( tweaks )

return params:Load()