
local sub = ...

local params = beat4sprite.create( {

	{
		File = "5th/Sprites/AB 4x4.png",
		Columns = { -4, 3 },
		Rows = { -2, 1 },
		firstState = 13,
		Commands = { "Move", "Blink" },
		Cleanup = true
	},

	{ Remove = true }

} )
	

local params_2 = beat4sprite.create( {
	File = "5th/Sprites/A 4x3.png",
	firstState = 1,	lastState = 2,
	Shade = true,	Move = "Down",
	Script = "SpaceEffects/Particles.lua"
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params ),
	params_2:Load()
}