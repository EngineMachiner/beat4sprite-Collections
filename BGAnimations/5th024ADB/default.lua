
local tweaks = ...

local params = beat4sprite.create( {

	{
		File = "/5th/Sprites/CAB 5x4.png",
		Columns = 5,
		Rows = { -2, 1 },
		firstState = 10,
		Cleanup = true
	},

	{
		File = "/5th/Sprites/CAB 5x4.png",
		firstState = 1,	Clockwise = true,
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral"
	},

	{	
		File = "/5th/Sprites/CAB 5x4.png",
		firstState = 1,	Move = "Out",
		Script = "SpaceEffects/RoundTrace.lua",
		Type = "Spiral"
	}

} )

params:tweak(tweaks)
	
return Def.ActorFrame{

	params[1]:Load(),
	
	Def.ActorFrame{
		params[2]:Load(),
		OnCommand=function(self)
			beat4sprite.setFunctions(self)
			self:queuecommand("Rep")
		end,
		RepCommand=function(self)
			local d = self:getDelay() * 8
			self:sleep(d - 0.25):linear(0.25):diffusealpha(0)
			self:sleep(d - 0.25):linear(0.25):diffusealpha(1)
			self:queuecommand("Rep")
		end		
	},

	Def.ActorFrame{
		params[3]:Load(),
		OnCommand=function(self)
			beat4sprite.setFunctions(self)
			self:diffusealpha(0)
			self:queuecommand("Rep")
		end,
		RepCommand=function(self)
			local d = self:getDelay() * 8
			self:sleep(d - 0.25):linear(0.25):diffusealpha(1)
			self:sleep(d - 0.25):linear(0.25):diffusealpha(0)
			self:queuecommand("Rep")
		end		
	}

}