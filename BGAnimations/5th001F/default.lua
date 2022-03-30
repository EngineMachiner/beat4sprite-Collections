
local t = Def.ActorFrame{}

local tweaks = {
	{ Frame_i = 4 },
	{ X_coord = 1 }
}

return loadfile( BGA_G.BPath("5th001C") )( tweaks )