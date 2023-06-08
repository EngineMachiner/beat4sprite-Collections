
local sub = {

	{ Actors = loadfile( beat4sprite.Paths.getBGAFile("5thBG000") )() },

	{ 
		Actors = { 
			loadfile( beat4sprite.Paths.getBGAFile("5thBG000") )(),
			beat4sprite.Sprite.blendQuad("BlendMode_InvertDest")
		}
	}

}

beat4sprite.tweak( sub, ... )

return beat4sprite.Load { Script = "Cyclic/Actor.lua", Set = sub }