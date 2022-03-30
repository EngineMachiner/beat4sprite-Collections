
local tweaks = {
	Commands = { "StairsStates", "Move" },
	Cross = 4
}

local t = loadfile( BGA_G.BPath("5th006A") )( tweaks )

tweaks.File = "5th/Sprites/HSV/DABCD2 1x4.png"
tweaks.Commands = { "StairsStates", "Move" }
tweaks.Cross = nil

return Def.ActorFrame{
	loadfile( BGA_G.BPath("5th006A") )( tweaks ), t
}