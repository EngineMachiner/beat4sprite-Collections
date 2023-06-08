
local params = beat4sprite.create {
	File = { "/5th/Backgrounds/C.png", "/5th/Backgrounds/CA.png" },
	Script = "Cyclic/Sprite.lua"
}

return params:tweak(...):Load()