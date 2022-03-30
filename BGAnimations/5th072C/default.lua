
local sub = ...

local params = BGA_G.Create( {
	File = { 
		"5th/Backgrounds/CABCD.png",
		"5th/Backgrounds/C.png",
   		"5th/Backgrounds/CA.png"
   	},
	Script = "SplitScreen.lua",
   	LoadOnce = true,
   	Alphas = { 1, 2 }
} )

params:ParTweak(sub)

return params:Load()