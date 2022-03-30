
local sub = ... or {}
sub.Sleep = sub.Sleep or 1

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
		local d = self:GetDelay() * 4
		d = d * sub.Sleep
		self:diffusealpha(1):sleep(d)
		self:diffusealpha(0):sleep(d)
		self:queuecommand("Repeat")
	end

}

return Def.ActorFrame{ t }