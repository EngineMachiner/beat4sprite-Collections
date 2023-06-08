
local sub = ...

local p = {
	File = "5th/Sprites/BA 4x3.png",	States = 9,
	Move = "Out",	Type = "Line",
	Script = "SpaceEffects/Line.lua"
}

beat4sprite.tweak( p, sub )
p.Index = 2

return loadfile( beat4sprite.Paths.getBGAFile("5th001G") )( p )