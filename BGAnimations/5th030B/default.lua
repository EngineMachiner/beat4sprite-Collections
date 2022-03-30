
local sub = ...

local p = {
	File = "5th/Sprites/BA 4x3.png",	Frames = 9,
	Dir = "Out",	Type = "Line",
	Script = "SpaceEffects/Line.lua"
}

BGA_G.ParTweak( p, sub )
p.Index = 2

return loadfile( BGA_G.BPath("5th001G") )( p )