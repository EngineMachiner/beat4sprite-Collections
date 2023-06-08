
local tweaks = ...

local params = beat4sprite.create( {

	{
		File = "/5th/Backgrounds/CA.png",
		Columns = 1,
		Commands = "Mirror",
		MirrorX = true
	},

	{
		File = "/5th/Sprites/CAB 5x4.png",
		firstState = 11,
		lastState = 15,
		Script = "WallBumps.lua"
	}

} )
 	
params:tweak( tweaks )

return params:Load()
