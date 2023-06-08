return beat4sprite.Load( {
	File = beat4sprite.GAMESTATE.getSongBG(),
	Columns = 1,		Type = 2,
	Script = "WarpingEffects/Flag.lua",
	Commands = "Mirror",
	MirrorX = true
} )