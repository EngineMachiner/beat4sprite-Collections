
local sub = {

	{ Actors = loadfile( beat4sprite.Paths.getBGAFile("5thBG000") )() },

	{ 
		File = "/5th/Backgrounds/BABC 2x2.png",
		Columns = { -2, 1 },	Rows = { -1, 0 },
		firstState = 2,	Commands = "Mirror"
	}

}

sub[3] = {}		DeepCopy( sub[2], sub[3] )		

sub[3].firstState = 3		sub[3].CycleTime = 4

beat4sprite.tweak( sub, ... )

return beat4sprite.Load { Script = "Cyclic/Actor.lua", Set = sub, CycleTime = 2 }