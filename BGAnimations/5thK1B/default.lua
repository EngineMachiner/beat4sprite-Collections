local params = beat4sprite.create( {
	File = "5th/Sprites/CA 4x3.png",
	firstState = 3,
	lastState = 1,
	Columns = { -4, 3 },
	Rows = 1,
	Commands = "StairsStates"
} )

return Def.ActorFrame{
    loadfile( beat4sprite.Paths.getBGAFile("5thK1A") )(),
    params:Load()	
}