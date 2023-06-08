
local params = beat4sprite.create {

	File = {
		"5th/Backgrounds/DA2.png",
		"5th/Backgrounds/DA.png"
	},
	scrollY = 1,	posY = -0.5,
	Cleanup = true

}

return params:tweak(...):Load()