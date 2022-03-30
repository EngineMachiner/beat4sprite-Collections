
local tweaks = {

	
	Speed = 0.5
	
}

local t = Def.ActorFrame{

	loadfile( BGA_G.BPath("5th028B") )( tweaks )

}

return Def.ActorFrame{ t }