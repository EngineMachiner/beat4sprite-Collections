
local tweaks_2 = ...

local tweaks = BGA_G.Create( {

	{
		File = "5th/Sprites/DABC 4x4.png",
		X_num = { -4, 3 },
		Y_num = 2,
		Y_coord = 1,
		Frame_i = 14,
		Cleanup = true,
		Commands = "Move"
	},

	{ Remove = true }

} )

if tweaks_2 then tweaks:ParTweak( tweaks_2 ) end

return loadfile( BGA_G.BPath("5th003A") )( tweaks )