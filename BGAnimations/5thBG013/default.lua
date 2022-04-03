
local sub = ...

local t = BGA_G.Frame()

local params = BGA_G.Create( {
	File = BGA_G.SongBGPath(),
	X_num = 2,	Y_num = 1,
	Commands = { "Mirror", "FourScreens" },
	BGMirror = true
} )

params:ParTweak( sub )

return Def.ActorFrame{
	params:Load(),	t
}