
local params = beat4sprite.create( {
	File = "5th/Sprites/Gradients/F002 8x8.png",
	Columns = { -2, 1 },	Rows = { -1, 0 },
	lastState = 60,	Zoom = 4,	AnimationRate = 2,
	Commands = "Mirror"
} )

return Def.ActorFrame{
	params:Load()
}