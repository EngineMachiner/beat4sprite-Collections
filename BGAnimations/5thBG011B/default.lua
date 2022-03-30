
local t = Def.ActorFrame{}

t[#t+1] = loadfile( BGA_G.BPath("5thBG000") )( {
	Actors = { BGA_G.IDest_Quad() }
} )

t[#t+1] = Def.ActorFrame{
	
	BGA_G.BGSet( BGA_G.SongBGPath() ):Load(),

	OnCommand=function(self)
		BGA_G.ObjFuncs(self)
		self:queuecommand("Repeat")
	end,

	RepeatCommand=function(self)
		local d = self:GetDelay()
		self:diffusealpha(1):sleep(2*d)
		self:diffusealpha(0):sleep(1*d)
		self:diffusealpha(1):sleep(2*d)
		self:diffusealpha(0):sleep(3*d)
		self:queuecommand("Repeat")
	end

}

return Def.ActorFrame{ t }