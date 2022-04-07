
local params = BGA_G.Create( {
	{
		X_num = { -2, 1 },
		X_coord = 1
	}
} )

return BGA_G.Frame() .. {
	loadfile( BGA_G.BPath("5th034A") )( params ),
	BGA_G.IDest_Quad()
}