
local sub = ...

local params = {

	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{
		File = "5th/Sprites/D 5x4.png",
		Columns = 5,	Rows = { -2, 1 },
		firstState = 1,	lastState = 20,
		Commands = "StatePerSprite",
		AnimationTypes = "Static",
		Cleanup = true
	},

	{ Remove = true }

}
params = beat4sprite.create(params)

params_2 = params:copy()
params_2:tweak( {
	Index = 1,
	File = "5th/Sprites/HSV/D 5x4.png",
	Commands = { "StatePerSprite", "Pulse" }
} )

local params_3 = params[1]:copy()
params_3:tweak( { 
	Fade = { 1, 1 },	Class = "Quad",
	Color = "Rainbow",
	Commands = { "Pulse", "Fade", "Blend" }
} )

params_3:tweak( sub )

return Def.ActorFrame{ 
	params:Load(),		params_2:Load(),
	params_3:Load()
}