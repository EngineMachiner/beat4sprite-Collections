
local params = BGA_G.Create( {
	File = BGA_G.SongBGPath(),	X_num = 1,
	Commands = "Rainbow",
	BGMirror = true
} )

return params:Load()