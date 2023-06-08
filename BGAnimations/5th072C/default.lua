
local sub = ...

local params = beat4sprite.create {

	File = { 
		"5th/Backgrounds/CABCD.png",	"5th/Backgrounds/C.png",
   		"5th/Backgrounds/CA.png"
   	},

	Script = "Cyclic/SplitScreen.lua",			Alphas = { 1, 2 }
	
}

params:tweak(sub)

return params:Load()