
local t = Def.ActorFrame{}

local tweaks = {

	{
		File = "5th/Sprites/ABC 4x4.png",
		Frame_i = 13,
		Frame_l = 16,
		X_num = { -4, 3 },
		Y_num = { -2, 1 },
		Cleanup = true
	},

	{ Remove = true }

}

	t[#t+1] = loadfile( BGA_G.BPath("5th001A") )( tweaks )

return Def.ActorFrame{ t }