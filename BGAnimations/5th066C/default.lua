
local sub = ...

local tweaks = beat4sprite.create( {

	{
		Columns = { -6, 5 },
		File = "5th/Sprites/CAB 5x4.png",
		firstState = 8,	scrollX = 1
	},

	{ Index = 3,	Remove = true }

} )

tweaks:tweak( sub )

local params = beat4sprite.create( {
	File = "5th/Sprites/CAB 5x4.png",
	Columns = 5,	Rows = { -2, 1 },
	firstState = 4,
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th042A") )( tweaks ),
	params:Load()
}