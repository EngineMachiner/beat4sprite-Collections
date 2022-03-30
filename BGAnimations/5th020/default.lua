
local params = BGA_G.Create( {
	File = "5th/Backgrounds/BA.png",
	X_num = 1,
	Commands = "Mirror",
	BGMirror = true,
	Script = "WarpingEffects/Bob.lua"
} ) 

return params:Load()