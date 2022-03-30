


local t = Def.ActorFrame{}

local params = BGA_G.Create( {

	{
		File = "1st/Sprites/Gradients/1stCobweb 8x8.png",
		X_num = 2,
		X_pos = -0.5,
		Y_num = { -1, 0 },
		Frame_i = 1,
		Frame_l = 60,
		Zoom = 4,
		Delay = 2,
		Commands = { "Mirror" },
		Blend = "BlendMode_Add"
	},

	{
		File = "1st/Sprites/M 5x4.png",
		Script = "SpaceEffects/Line.lua",
		Commands = "FramePerSprite",
		Frame_l = 6
	}

} )

	t[#t+1] = Def.Quad{
		OnCommand=function(self)
			self:FullScreen()
			self:diffuse(Color.Black)	
		end
	}
	params:Load( t )

return Def.ActorFrame{ t }