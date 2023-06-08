
local sub = ...

local params = beat4sprite.create {

	{	
		File = "5th/Sprites/DABCDE 4x3.png",
		firstState = 1,		lastState = 12,
		posX = 1,			scrollX = 1,
		Rows = 1,			Columns = 4,
		tweenRate = 0.5,	Cross = { By = 1, Type = 1 },
	}

}

params[2] = params[1]:copy():tweak {
	File = "5th/Sprites/HSV/DABCDE 4x3.png",		posX = 0
}

params[1]:tweak { Actors = beat4sprite.Sprite.colorQuad( Color.Black ) .. { onBackground = true } }

params:tweak(sub)

return params:Load()