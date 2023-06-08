
local tweaks = {
	Commands = "Move",
	scrollY = 1,	Rows = 2
}

local params = beat4sprite.create( {
	File = "5th/Sprites/DA 4x3.png",
	Move = "Down",	firstState = 5,
	lastState = 6,	spinAngle = true,
	Commands = "StatePerSprite",
	Script = "SpaceEffects/Particles.lua"
} )

return Def.ActorFrame{
	loadfile( beat4sprite.Paths.getBGAFile("5th047A") )( tweaks ),
	params:Load()
}