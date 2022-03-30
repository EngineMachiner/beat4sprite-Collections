
local tweaks = ...

local params = BGA_G.Create( {

	File = {
		"5th/Backgrounds/DA2.png",
		"5th/Backgrounds/DA.png"
	},
	Y_coord = 1,	X_num = 1,
	Commands = "Move",	Cleanup = true

} )

params:ParTweak( tweaks )

return params:Load()