
local params = beat4sprite.create( {
	{
		Columns = { -2, 1 },
		scrollX = 1
	}
} )

return beat4sprite.ActorFrame() .. {
	loadfile( beat4sprite.Paths.getBGAFile("5th034A") )( params ),
	beat4sprite.Sprite.blendQuad("BlendMode_InvertDest")
}