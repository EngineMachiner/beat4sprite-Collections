
local params = BGA_G.Create( {

	{
		File = "1st/Sprites/F 4x4.png",
		X_num = 4, Y_num = { -2, 1 },
		Frames = { 1, 8, Type = "Loop" },
		Color = color("#808080"),
		Commands = { "Color" }
	},

	{
		File = "1st/Sprites/Gradients/B001 5x3.png",
		X_num = { -2, 1 }, Y_num = { -1, 0 },
		Frame_l = 15, Zoom = 1.5, Delay = 0.5,
		Commands = { "Blend", "Rainbow", "Mirror" }
	}

} )

params[1].Actors = Def.Quad{
	AtBack = true,
	OnCommand=function(self)
		self:setsize(SCREEN_WIDTH,SCREEN_HEIGHT)
		self:Center()
	end
}

return params:Load()