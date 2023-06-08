
local sub = ...

local params = beat4sprite.create( {

	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{
		File = "5th/Sprites/DABC 4x4.png",
		Columns = { -4, 5 },	Rows = 2,
		firstState = 15,	scrollX = -1,
		scrollY = -1,	Commands = "Move",
		Cleanup = true
	},

	{ Remove = true }

} )

local params_2 = params:copy()
params_2[1]:tweak( {
	Class = "Quad",		Color = "RainbowFlashing",
	Commands = { "Move", "Blend" }
} )

local params_3 = beat4sprite.create( {
	Index = 3,
	File = "5th/Sprites/DABC 4x4.png",
	firstState = 11,	lastState = 12,
	Move = "Down",	spinAngle = true,	Shade = true,
	AnimationTypes = "Static",
	Command = "StatePerSprite",
	Script = "SpaceEffects/Particles.lua"
} )

params_3:tweak( sub )

return Def.ActorFrame{ 
	params:Load(),		params_2:Load(),
	params_3:Load()
}