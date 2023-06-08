return beat4sprite.ActorFrame() .. {

	loadfile( beat4sprite.Paths.getBGAFile("5th016A") )(),
	loadfile( beat4sprite.Paths.getBGAFile("5th012A") )() .. {

		OnCommand=function(self) self:queuecommand("Repeat") end,
		RepeatCommand=function(self)
			local d = self:getDelay()
			self:diffusealpha(0):sleep(d):diffusealpha(1):sleep(d)
			self:queuecommand("Repeat")
		end

	}

}