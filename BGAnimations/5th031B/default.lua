
local sub = ...

local params = beat4sprite.create( {
	File = "5th/Sprites/HSV/DA 4x3.png",
	firstState = 1,	lastState = 2
} )

params:tweak( sub )

local params_2 = beat4sprite.create( {

	{ 
		File = "5th/Sprites/DA 4x3.png",
		Columns = { -4, 3 },	Rows = 1,
		firstState = 12,
		Cleanup = true
	},

	{ Remove = true }

} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params_2 ),
	loadfile( beat4sprite.Paths.getBGAFile("5th031A") )( params )
}