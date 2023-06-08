
local sub = ...

local params = beat4sprite.create {
	File = "5th/Sprites/DANCE 1x5.png",
	firstState = 1,			lastState = 4,
	scrollX = -1,			tweenRate = 8,
	Columns = { -1, 5 },	Rows = 2,
	Commands = { "StatePerSprite", "StairsStates", "Move" },
	AnimationTypes = "Static"
}

params:tweak( sub )

return params:Load()