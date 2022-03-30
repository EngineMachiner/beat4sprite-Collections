
local params = BGA_G.Create( {

	{
		File = "5th/Backgrounds/AB.png",
		Cleanup = true,
		X_num = 1,
		Commands = "Mirror",
		BGMirror = true
	},

	{ Remove = true }

} )

local params_2 = BGA_G.Create( {
	File = "5th/Sprites/X3 5x4.png",
	Cleanup = true,
	Y_num = { -2, 1 }, X_num = 2,
	Frames = { 1, 20, Type = "RowSkip" },
	Commands = { "Pulse", "StairsStates" }
} )

return Def.ActorFrame{

	Def.Quad{
		OnCommand=function(self)
			self:visible(true)
			self:zoomto(SCREEN_WIDTH,SCREEN_HEIGHT)
			self:Center()
			self:diffuse(Color.Black)
		end,
		LoseFocusCommand=function(self)
			self:visible(false)
		end
	},

	loadfile( BGA_G.BPath("5th001A") )( params ),
	params_2:Load()

}