return BGA_G.Frame() .. {

	loadfile(BGA_G.BPath("5th016A"))(),

	Def.ActorFrame{
		loadfile(BGA_G.BPath("5th012A"))(),
		OnCommand=function(self)
			BGA_G.ObjFuncs(self)
			self:set_tween_uses_effect_delta(true)
			self:effectclock('beat')
			self:queuecommand("Repeat")
		end,
		RepeatCommand=function(self)
			local d = self:GetDelay()
			self:diffusealpha(0):sleep(d)
			self:diffusealpha(1):sleep(d)
			self:queuecommand("Repeat")
		end
	}

}