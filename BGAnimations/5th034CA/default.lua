return beat4sprite.ActorFrame() .. {
	
	Def.ActorFrame{
		loadfile( beat4sprite.Paths.getBGAFile("5th034C") )(),
		OnCommand=function(self)
			self:rainbow()
			self:effectperiod(8)
			beat4sprite.setFunctions(self)
		end
	}

}