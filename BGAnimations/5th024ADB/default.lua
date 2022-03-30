
local tweaks = ...

local params = BGA_G.Create( {

	{
		File = "/5th/Sprites/CAB 5x4.png",
		X_num = 5,
		Y_num = { -2, 1 },
		Frame_i = 10,
		Cleanup = true
	},

	{
		File = "/5th/Sprites/CAB 5x4.png",
		Frame_i = 1,	Clockwise = true,
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral"
	},

	{	
		File = "/5th/Sprites/CAB 5x4.png",
		Frame_i = 1,	Dir = "Out",
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral"
	}

} )

params:ParTweak(tweaks)
	
return Def.ActorFrame{

	params[1]:Load(),
	
	Def.ActorFrame{
		params[2]:Load(),
		OnCommand=function(self)
			BGA_G.ObjFuncs(self)
			self:queuecommand("Rep")
		end,
		RepCommand=function(self)
			local d = self:GetDelay() * 8
			self:sleep(d - 0.25):linear(0.25):diffusealpha(0)
			self:sleep(d - 0.25):linear(0.25):diffusealpha(1)
			self:queuecommand("Rep")
		end		
	},

	Def.ActorFrame{
		params[3]:Load(),
		OnCommand=function(self)
			BGA_G.ObjFuncs(self)
			self:diffusealpha(0)
			self:queuecommand("Rep")
		end,
		RepCommand=function(self)
			local d = self:GetDelay() * 8
			self:sleep(d - 0.25):linear(0.25):diffusealpha(1)
			self:sleep(d - 0.25):linear(0.25):diffusealpha(0)
			self:queuecommand("Rep")
		end		
	}

}