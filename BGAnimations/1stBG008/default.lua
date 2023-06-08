
local params = beat4sprite.create {

	File = "1st/Sprites/G2 4x4.png",
	Columns = { -6, 5 },	Rows = { -3, 2 },
	States = { 1, 8 },		Color = "Rainbow",
	Script = "Texture.lua",	Blend = true,

}

return Def.ActorFrame {

	beat4sprite.Sprite.bgTemplate():Load(),
	params:tweak(...):Load()

}