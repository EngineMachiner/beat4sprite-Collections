
local sub = ...

local params = beat4sprite.create( {

	{
		File = "5th/Sprites/AB 4x4.png",
		Columns = { -4, 3 },
		Rows = { -2, 1 },
		firstState = 13,
		Commands = { "Move" },
		Cleanup = true
	},

	{ Remove = true }

} )
	

local params_2 = beat4sprite.create( {
	File = "5th/Sprites/AB 4x4.png",
	firstState = 9,	lastState = 10,
	Commands = "StatePerSprite",
	AnimationTypes = "Static",
	Script = "LineXY.lua"
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th001A") )( params ),
	params_2:Load()
}