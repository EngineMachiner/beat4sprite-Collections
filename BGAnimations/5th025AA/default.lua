
local params = beat4sprite.create( {

	{
		File = "5th/Sprites/DABC 4x4.png",
		Columns = { -4, 3 },
		Rows = 2,
		firstState = 13,
		Commands = "Move",
		scrollY = -1,
		Cleanup = true
	},

	{ Remove = true }

} )

local params_2 = beat4sprite.create( {
	File = "5th/Sprites/DA 4x3.png",
	firstState = 1,	lastState = 2,	Move = "Up",
	Script = "SpaceEffects/Particles.lua"
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params ),
	params_2:Load()
}