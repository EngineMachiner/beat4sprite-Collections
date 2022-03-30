
local t = BGA_G.Frame()

local params = BGA_G.Create( {

	{
		File = "1st/Sprites/HComb 1x3.png",
		Zoom = 0.5, X_num = 1,
		Y_num = 3, Frame_l = 3
	},

	{
		File = "1st/Sprites/HComb2 1x3.png",
		Zoom = 1.5, Frame_i = 1,
		Frame_l = 3, X_num = 1,
		Y_num = 1
	}

} )

	params:Load( t )

	t[2].On2Command = function(self)
		local d = self:GetDelay(2) * 4
		self:diffusealpha(1):sleep(d)
		self:diffusealpha(0):sleep(d):diffusealpha(1)
		self:queuecommand("On2")
	end

	t[2].OnCommand = function(self)
		BGA_G.ObjFuncs(self)
		self:queuecommand("On2")
	end

	t[#t+1] = Def.Quad{
		OnCommand=function(self)
			BGA_G.ObjFuncs(self)
			self:Center():FullScreen()
			self:diffuse(Color.Black)
			self:queuecommand("On2")
		end,
		On2Command=function(self)
			local d = self:GetDelay(2)
			self:diffusealpha(0)
			self:sleep( 3 * d ):diffusealpha(1)
			self:sleep(d):diffusealpha(0)
			self:queuecommand("On2")
		end
	}

	BGA_G.Load( {
		File = "1st/Sprites/H 5x4.png",
		Script = "SpaceEffects/Line.lua",
		Frame_i = 17, Num = 4, Type = "Line",
		Lines = 12
	}, t )

return Def.ActorFrame{ t }