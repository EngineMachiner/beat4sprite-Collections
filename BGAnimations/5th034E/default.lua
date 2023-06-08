
local sub = ...

local params = beat4sprite.create( {
	File = "5th/Sprites/DABCDE 4x3.png",
	firstState = 1,	lastState = 12,
	Columns = 5,	Rows = 1,
	scrollX = -1,	tweenRate = 2,
	Commands = { "Move" }
} )

local tweaks = { Columns = 2,	scrollX = 0	}
beat4sprite.tweak( tweaks, sub )

return beat4sprite.ActorFrame() .. {
	loadfile( beat4sprite.Paths.getBGAFile("5th034A") )( tweaks ),
	beat4sprite.Sprite.blendQuad("BlendMode_InvertDest"),
	params:Load()
}