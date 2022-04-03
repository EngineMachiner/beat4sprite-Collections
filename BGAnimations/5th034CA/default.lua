return BGA_G.Frame() .. {
	
	Def.ActorFrame{
		loadfile( BGA_G.BPath("5th034C") )(),
		OnCommand=function(self)
			self:rainbow()
			self:effectperiod(8)
			BGA_G.ObjFuncs(self)
		end
	}

}