
local params = beat4sprite.create( {

	{
		File = "5th/Sprites/A 4x3.png",
		Columns = { -4, 3 },		Rows = 2,
		firstState = 9,				lastState = 10,
		AnimationTypes = { "Static", "Stairs" },
		scrollY = -1,				Cleanup = true
	},

	{ Remove = true }

} )

local params_2 = beat4sprite.create( {
	File = "5th/Sprites/AB 4x4.png",
	firstState = 3,	lastState = 4,
	Move = "Down",
	Script = "SpaceEffects/Particles.lua"
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params ),
	params_2:Load()
}