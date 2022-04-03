

local args = ...

local t = Def.ActorFrame{}

local aft = Def.ActorFrameTexture{
	InitCommand=function(self)
		local p = self:GetParent()
		self:SetSize( SCREEN_WIDTH, SCREEN_HEIGHT )
		self:EnableAlphaBuffer(true)
		if not p.Texture then self:Create() end
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

return BGA_G.Frame() .. {

	params[1]:Load( t ),
	Def.ActorFrame{ aft,
		Def.Sprite{
			OnCommand=function(self)
				local p = self:GetParent()
				local tex = p.Texture
				self:SetTexture(tex)
				self:Center():blend('add')
				self:diffusealpha(0.5)
				BGA_G.bitEyeFix(self, function(self)
					bitEye.AFT = true		self:xy(0,0)
				end)
			end
		}
	},

}