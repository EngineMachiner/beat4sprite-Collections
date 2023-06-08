
local sub = {

	{ 
		CycleTime = 2,
		Actors = loadfile( beat4sprite.Paths.getBGAFile("5thBG000") )()
	},

	{ 
		CycleTime = 1,
		Actors = {
			loadfile( beat4sprite.Paths.getBGAFile("5thBG000") )(),
			beat4sprite.Sprite.blendQuad("BlendMode_InvertDest")
		}
	}

}

sub[3] = sub[1]			sub[4] = { CycleTime = 3,	Actors = sub[2].Actors }

return beat4sprite.Load { Script = "Cyclic/Actor.lua", Set = sub }