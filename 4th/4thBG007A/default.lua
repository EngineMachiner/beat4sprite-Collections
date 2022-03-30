

local args = ...

local t = Def.ActorFrame{}

local aft = Def.ActorFrameTexture{
	InitCommand=function(self)
		self:SetSize( SCREEN_WIDTH, SCREEN_HEIGHT )
		self:EnableAlphaBuffer(true)
		self:Create()
		local p = self:GetParent()
		p.Texture = self:GetTexture()
	end
}

local params = BGA_G.Create( {

	{	
		File = BGA_G.SongBGPath(),
		X_num = { -2, 3 },
		Commands = { "Rainbow", "Mirror", "StairsStates" },
		Alpha = 0.5,
		StopAtFrame = 2,
		TCV = { 1, 0 },
		HurryTweenBy = 2
	},

	{	
		File = BGA_G.SongBGPath(),
		X_num = 2,
		Y_num = { -1, 0 },
		Commands = "K2x2"
	}

} )

	params[2]:Load( aft )

	aft[#aft+1] = BGA_G.IDest_Quad()

return Def.ActorFrame{

	GainFocusCommand=function(self)
		BGA_G.ObjFuncs(self)
		self:ResumeOrStop()
	end,
	LoseFocusCommand=function(self)
		self:ResumeOrStop("Stop")
	end,

	params[1]:Load( t ),
	Def.ActorFrame{ 
		aft,
		Def.Sprite{
			OnCommand=function(self)
				local p = self:GetParent()
				local tex = p.Texture
				self:SetTexture(tex)
				self:Center()
				self:blend('add')
				self:diffusealpha(0.5)
			end
		}
	},

}