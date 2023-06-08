
local params = beat4sprite.create( {

	{
		File = "5th/Sprites/CAB 5x4.png",
		firstState = 8,
		Cleanup = true,
		Columns = 5,
		Rows = { -2, 1 } 
	},

	{ Remove = true }

} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params ),
	beat4sprite.Load( {
		Index = 3, firstState = 1,
		File = "5th/Sprites/CAB 5x4.png",
		Script = "SpaceEffects/Bounce.lua"
	} )
}