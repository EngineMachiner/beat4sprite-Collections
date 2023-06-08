
local tweaks = ...

local params = beat4sprite.create( {

	{
		File = "1st/Backgrounds/E.png",
		Commands = "Mirror",
		MirrorX = true,
		Columns = 1
	},

	{
		File = "1st/Sprites/H 5x4.png",
		firstState = 1, lastState = 2,
		Spin = true, Zoom = 0.8,
		Script = "SpaceEffects/Line.lua",
		Type = "Line",		Commands = "StatePerSprite",
		AnimationTypes = "Static"
	}

} )

params:tweak( tweaks )

return params:Load()