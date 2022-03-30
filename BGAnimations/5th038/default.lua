
local params = BGA_G.Create( {
	File = "5th/Sprites/AB 4x4.png",
	Frames = { 16, 16 },
	X_num = 4,
	Y_num = { -2, 1 }
} )

return Def.ActorFrame{

	OnCommand=function(af)
		af:RunCommandsOnChildren(function(c)
			c:set_tween_uses_effect_delta(true)
			c:effectclock('beat')
		end)
		af:queuecommand("Repeat")
	end,
	GainFocusCommand=function(self)
		BGA_G.ObjFuncs(self)
		self:ResumeOrStop()
	end,
	LoseFocusCommand=function(self)
		self:ResumeOrStop("Stop")
	end,

	loadfile(BGA_G.BPath("5th037B"))(),

	Def.ActorFrame{
		loadfile(BGA_G.BPath("5th012A"))(),
		RepeatCommand=function(self)
			local d = BGA_G.GetDelay(self)
			self:diffusealpha(0):sleep(d)
			self:diffusealpha(1):sleep(d)
			self:diffusealpha(0):sleep( 2 * d )
			self:queuecommand("Repeat")
		end
	},

	Def.ActorFrame{
		loadfile(BGA_G.BPath("5th016A"))(),
		RepeatCommand=function(self)
			local d = BGA_G.GetDelay(self)
			self:diffusealpha(0):sleep(2*d)
			self:diffusealpha(1):sleep(d)
			self:diffusealpha(0):sleep(d)
			self:queuecommand("Repeat")
		end
	},

	Def.ActorFrame{
		params:Load(),
		RepeatCommand=function(self)
			local d = BGA_G.GetDelay(self)
			self:diffusealpha(0):sleep(3*d)
			self:diffusealpha(1):sleep(d)
			self:queuecommand("Repeat")
		end
	}

}