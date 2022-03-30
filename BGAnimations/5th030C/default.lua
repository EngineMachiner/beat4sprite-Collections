
local sub = ...

local tweaks = {
	File = "5th/Sprites/BA 4x3.png",
	Frame_i = 10,	Type = "Line",
	Commands = "TwoSprites",
	Script = "SpaceEffects/Line.lua"
}

BGA_G.ParTweak( tweaks, sub )
tweaks.Index = 2

return loadfile( BGA_G.BPath("5th001G") )( tweaks )