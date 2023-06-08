
local tweaks = { Cross = { Type = 3 } }

local t = loadfile( beat4sprite.Paths.getBGAFile("5th006BA") )( tweaks )

tweaks.File = "5th/Sprites/HSV/DABCD2 1x4.png"		tweaks.Cross = nil

return Def.ActorFrame {
	loadfile( beat4sprite.Paths.getBGAFile("5th006BA") )( tweaks ), t
}