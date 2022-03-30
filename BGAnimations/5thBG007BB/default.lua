
local t = Def.ActorFrame{}

t[#t+1] = BGA_G.Load( { 
	File = "/5th/Backgrounds/CA.png",
	BGMirror = true,
	X_num = 1,
	Commands = { "Mirror" }
} )

t[#t+1] = Def.ActorFrame{
	
	BGA_G.Load( {
		File = BGA_G.SongBGPath(),
		BGMirror = true,	X_num = 1
	} ),

	OnCommand=function(self)
		BGA_G.ObjFuncs(self)
		self:queuecommand("Repeat")
	end,

	RepeatCommand=function(self)
		local d = self:GetDelay()
		self:diffusealpha(0):sleep(0.5*d)
			:diffusealpha(1):sleep(1.5*d)
			:diffusealpha(0):sleep(0.5*d)
			:diffusealpha(1):sleep(1.5*d)
		self:queuecommand("Repeat")
	end

}

return Def.ActorFrame{ t }