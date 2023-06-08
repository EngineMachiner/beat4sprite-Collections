
local sub = ...

local params = beat4sprite.create( {
	File = beat4sprite.GAMESTATE.getSongBG(),
	Commands = { "Mirror", "Move" },
	Columns = 1,	Rows = 1,
	MultipleFiles = { 2, 2 },
	scrollY = -1,
} )

params:tweak( sub )

return params:Load()