
local tweaks = ...

local t = Def.ActorFrame{}

local params = BGA_G.Create( {

	{
		File = "1st/Sprites/G2 4x4.png",
		X_num = { -6, 5 },	Y_num = { -3, 2 },
		Frames = { 1, 8 },	Zoom = 0.675,
		Color = "Rainbow"
	},

	{
		File = BGA_G.SongBGPath(),
		Commands = "Mirror",
		BGMirror = true,
		X_num = 1
	}

} )

params:ParTweak( tweaks )

t[#t+1] = Def.ActorFrameTexture{
	OnCommand=function(self)
		self:setsize( SCREEN_WIDTH, SCREEN_BOTTOM )
		self:EnableAlphaBuffer(true)
		self:Create()
		self:GetParent().Tex = self:GetTexture()
	end,
}
params[1]:Load( t[#t] )
params[2]:Load( t )

t[#t+1] = Def.Sprite{
	OnCommand=function(self)
		local tex = self:GetParent().Tex
		self:Center()
		self:SetTexture(tex)
		self:blend("BlendMode_Add")
	end
}

return Def.ActorFrame{ 
	OnCommand=function(self)
		BGA_G.bitEyeFix(self, function(self) 
			bitEye.AFT = true
		end)
	end,	t
}