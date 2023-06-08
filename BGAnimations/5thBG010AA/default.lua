
local sub = ...

local params = beat4sprite.create( {
	
	File = beat4sprite.GAMESTATE.getSongBG(),
	Columns = 1,
	Script = "WarpingEffects/Flag.lua",
	tweenRate = 0.5,
	MirrorX = true
} )

params:tweak(sub)

return params:Load()