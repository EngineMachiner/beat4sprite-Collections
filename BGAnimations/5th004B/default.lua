local t = Def.ActorFrame{}

local tweaks = {
	
	
	Y_coord = -1

}

	t[#t+1] = loadfile( BGA_G.BPath("5th004A") )( tweaks )

return Def.ActorFrame{ t }