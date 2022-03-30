
local params = BGA_G.Create( {
	Commands = { "Rainbow", "Mirror" }
} )

return loadfile( BGA_G.BPath("5thBG002A") )( params )