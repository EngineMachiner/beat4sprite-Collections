
local sub = ...

local tweaks = {
	File = "5th/Sprites/BA 4x3.png",
	firstState = 10,	Type = "Line",
	Commands = "StatePerSprite",
	Script = "SpaceEffects/Line.lua"
}

beat4sprite.tweak( tweaks, sub )
tweaks.Index = 2

return loadfile( beat4sprite.Paths.getBGAFile("5th001G") )( tweaks )