return beat4sprite.ActorFrame() .. {
	loadfile( beat4sprite.Paths.getBGAFile("5th010AB") )(),
	beat4sprite.Sprite.blendQuad("BlendMode_InvertDest")
}