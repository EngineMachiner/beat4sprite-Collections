
local sub = ...
local params = beat4sprite.create( {

	{
		File = "5th/Sprites/CAB 5x4.png",
		Columns = 5,
		Rows = { -2, 1 },
		firstState = 10,
		Cleanup = true
	},

	{ Remove = true }

} )

local params_2 = beat4sprite.create( {
	File = "5th/Sprites/CA 4x3.png",
	firstState = 7,	Move = "Out",
	Flat = true,	Type = "Line",
	Script = "SpaceEffects/Line"
} )

params_2:tweak(sub)

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params ),
	params_2:Load()
}