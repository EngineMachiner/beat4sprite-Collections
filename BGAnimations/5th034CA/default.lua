return Def.ActorFrame{

	GainFocusCommand=function(self)
		BGA_G.ObjFuncs(self)
		self:ResumeOrStop()
	end,
	LoseFocusCommand=function(self)
		self:ResumeOrStop("Stop")
	end,
	
	Def.ActorFrame{
		loadfile( BGA_G.BPath("5th034C") )(),
		OnCommand=function(self)
			self:rainbow()
			self:effectperiod(8)
			BGA_G.ObjFuncs(self)
		end
	}

}