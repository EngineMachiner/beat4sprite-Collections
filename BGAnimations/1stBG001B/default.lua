
local tweaks = ...

local params = beat4sprite.create( {

	{
		File = beat4sprite.GAMESTATE.getSongBG(),
		Commands = "Mirror",
		MirrorX = true,
		Columns = 1
	},

	{
		File = "1st/Sprites/H 5x4.png",
		firstState = 6,	lastState = 13,
		Script = "SpaceEffects/Line.lua",
		Type = "Line",	Lines = 12,
		Commands = "StatePerSprite",
		AnimationTypes = "Static"
	}

} )

params:tweak( tweaks )

return params:Load()