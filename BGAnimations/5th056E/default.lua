
local f = "5th/Backgrounds/BABC 2x2.png"

return loadfile( BGA_G.BPath("5th056B") )( { 
	{ File = f, Frame_i = 2 }, 
	{ Index = 2, Dir = "Out" } 
} )