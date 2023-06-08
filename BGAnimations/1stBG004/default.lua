
local tweaks = ...

local params = beat4sprite.create( {

	{
		File = beat4sprite.GAMESTATE.getSongBG(),
		Commands = "Mirror",
		MirrorX = true,
		Columns = 1
	},

	{
		File = "1st/Sprites/C 5x1.png",
		States = { 1, 5 },
		Commands = "StatePerSprite", Zoom = 0.5,
		Skip = true,	Clockwise = true,
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral",
		AnimationTypes = "Static"
	}

} )

params:tweak( tweaks )

return params:Load()