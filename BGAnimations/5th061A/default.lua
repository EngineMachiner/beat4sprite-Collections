
local sub = ...

local tweaks = beat4sprite.create( {

	{
		Cleanup = true,
		File = "/5th/Backgrounds/AB.png",
		Columns = 1,	Commands = "Mirror",
		MirrorX = true
	},

	{
		Cleanup = true,
		File = "/5th/Sprites/ABCD 4x3.png",
		lastState = 12,	Move = "Out",
		Script = "SpaceEffects/Line.lua"
	}

} )

tweaks:tweak( sub )

return loadfile( beat4sprite.Paths.getBGAFile("5th060A") )( tweaks )