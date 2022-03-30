
local t = Def.ActorFrame{}

local tweaks = {
	
	
	File = "5th/Sprites/HSV/DAB2 4x4.png",
	Frame_i = 6,
	Commands = { "Move", "Rainbow" },
	Y_coord = -1	

}

	t[#t+1] = loadfile( BGA_G.BPath("5th004A") )( tweaks )

return Def.ActorFrame{ t }