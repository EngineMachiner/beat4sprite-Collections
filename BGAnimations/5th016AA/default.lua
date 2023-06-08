
local sub = ...

local params = beat4sprite.create( {

	{
		File = "5th/Sprites/A 4x3.png",
		firstState = 11,
		lastState = 12,
		Cleanup = true,
		Columns = { -4, 3 },
		Rows = 1,
	},

	{ Remove = true },

	{
		File = "5th/Sprites/AB 4x4.png",
		firstState = 10,	Move = "Out",
		Script = "SpaceEffects/RoundTrace.lua"
	}

} )

	params:tweak( sub )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params ),
	params[3]:Load()
}