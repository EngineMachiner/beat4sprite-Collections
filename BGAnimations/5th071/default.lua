
local params = beat4sprite.create {

	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{
		File = "5th/Backgrounds/AB.png",
		Cleanup = true,
		Columns = 1,
		Commands = "Mirror",
		MirrorX = true
	},

	{ Remove = true }

}

return beat4sprite.ActorFrame() .. {

	beat4sprite.Sprite.colorQuad( Color.Black ),

	params:Load(),

	beat4sprite.Load {
		File = "5th/Sprites/X3 5x4.png",
		Rows = { -2, 1 }, Columns = 2,
		States = { 1, 20, Types = "RowSkip" },
		Commands = { "Pulse" }
	}

}