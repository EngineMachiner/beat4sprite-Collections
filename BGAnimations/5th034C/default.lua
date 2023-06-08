return beat4sprite.ActorFrame() .. {
	loadfile( beat4sprite.Paths.getBGAFile("5th034A") )(),
	beat4sprite.Sprite.blendQuad("BlendMode_InvertDest")
}