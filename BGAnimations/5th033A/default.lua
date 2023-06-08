
local sub = ...

local params = beat4sprite.create {
	File = "5th/Sprites/D 5x4.png",
	States = { 1, 20, Types = "XY-Skip" },
	Rows = { -3, 4 },	Columns = 5,
	scrollY = -1
}

params:tweak( sub )

return params:Load()