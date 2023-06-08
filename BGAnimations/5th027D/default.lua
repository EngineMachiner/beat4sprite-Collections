
local params = beat4sprite.create {
	File = "5th/Sprites/ABC 4x4.png",		lastState = 4,
	Script = "SpiralStaticTrace.lua",		Columns = { -1, 2 }
}

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th027A") ) { Index = 3, Remove = true },
	params:Load()
}