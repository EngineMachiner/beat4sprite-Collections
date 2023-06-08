
local params = beat4sprite.create( {
	File = beat4sprite.GAMESTATE.getSongBG(),	Columns = 1,
	Commands = "Rainbow",
	MirrorX = true
} )

return params:Load()